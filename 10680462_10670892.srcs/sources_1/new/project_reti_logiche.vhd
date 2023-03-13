
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity project_reti_logiche is
    port (
        i_clk : in std_logic;
        i_rst : in std_logic;
        i_start : in std_logic;
        i_w : in std_logic;
        o_z0 : out std_logic_vector(7 downto 0);
        o_z1 : out std_logic_vector(7 downto 0);
        o_z2 : out std_logic_vector(7 downto 0);
        o_z3 : out std_logic_vector(7 downto 0);
        o_done : out std_logic;
        o_mem_addr : out std_logic_vector(15 downto 0);
        i_mem_data : in std_logic_vector(7 downto 0);
        o_mem_we : out std_logic;
        o_mem_en : out std_logic
        );
end project_reti_logiche;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity datapath is
    port (
        i_clk : in std_logic;                                       
        i_rst : in std_logic;
        i_w : in std_logic;
        r0_load : in std_logic;                                     --?
        r1_load : in std_logic;                                     --|
        r2_load : in std_logic;                                     --|     We use load signals determine the register acces mode: 
        r3_load : in std_logic;                                     --|                     READ(0)/WRITE(1)
        rw_load : in std_logic;                                     --|
        rz_load : in std_logic;                                     --?
        z_sel : out std_logic_vector(1 downto 0);                   --Contains the channel chosen for the latest data request
        out_enable : in std_logic;                                  --Controls MUXes to enable output channels o_zx
        i_mem_data : in std_logic_vector(7 downto 0);
        o_mem_addr : out std_logic_vector(15 downto 0);
        o_z0 : out std_logic_vector(7 downto 0);
        o_z1 : out std_logic_vector(7 downto 0);
        o_z2 : out std_logic_vector(7 downto 0);
        o_z3 : out std_logic_vector(7 downto 0)  ;
        i_start : in std_logic    
        );
end datapath;

architecture Behavioral of project_reti_logiche is
component datapath is
    port (
        i_clk : in std_logic;                                              
        i_rst : in std_logic;
        i_w : in std_logic;
        r0_load : in std_logic;
        r1_load : in std_logic;
        r2_load : in std_logic;
        r3_load : in std_logic;
        rw_load : in std_logic;
        rz_load : in std_logic;
        z_sel : out std_logic_vector(1 downto 0);
        out_enable : in std_logic;
        i_mem_data : in std_logic_vector(7 downto 0);
        o_mem_addr : out std_logic_vector(15 downto 0);
        o_z0 : out std_logic_vector(7 downto 0);
        o_z1 : out std_logic_vector(7 downto 0);
        o_z2 : out std_logic_vector(7 downto 0);
        o_z3 : out std_logic_vector(7 downto 0) ;
        i_start : in std_logic     
        );
end component;

--Inner signals declaration to be bound to datapath input 
signal r0_load : std_logic;
signal r1_load : std_logic;
signal r2_load : std_logic;
signal  r3_load : std_logic;
signal  rw_load : std_logic;
signal  rz_load : std_logic;
signal  z_sel : std_logic_vector(1 downto 0);
signal out_enable : std_logic;

--States type declaration
type S is(INITIATE, RECEIVING_CH1, RECEIVING_CH2, RECEIVING_W, WAIT_MEM, ACTIVATE_Z0, ACTIVATE_Z1, ACTIVATE_Z2, ACTIVATE_Z3, PRINT_OUT);
signal cur_state, next_state : S;

begin
    MYDATAPATH: datapath port map(
            
            i_clk => i_clk,     
            i_rst => i_rst,     
            i_w => i_w,       
            r0_load => r0_load,   
            r1_load => r1_load,   
            r2_load => r2_load,   
            r3_load => r3_load,   
            rw_load => rw_load,   
            rz_load => rz_load,   
            z_sel => z_sel,     
            out_enable => out_enable,    
            i_mem_data => i_mem_data,
            o_mem_addr => o_mem_addr,
            o_z0 => o_z0,      
            o_z1 => o_z1,      
            o_z2 => o_z2,      
            o_z3 => o_z3,      
            i_start => i_start   
        );
        
 --Reset process for the FSM: when reset goes on INITIATE
    RESET : process(i_clk, i_rst)
    begin
        if(i_rst = '1') then                                        --On RESET the FSM goes on "INITIATE" as default state
            cur_state <= INITIATE;
        elsif rising_edge(i_clk) then                               --FSM is syncronous since its state is updated on the rising edge of clock signal
            cur_state <= next_state;
        end if;
    end process;
    
 --Next State Function for the FSM
    NSF : process(cur_state, i_start, z_sel)
        begin
            next_state <= cur_state;
            case cur_state is
                when INITIATE =>                                    --Default state to wait for the input to be read (i_start = '1')                         
                    if i_start = '1' then                                    
                        next_state <= RECEIVING_CH1;
                    end if;    
                    --!! elsif misses for the default branch              
                when RECEIVING_CH1 =>                               --First bit of the channel selection  
                    next_state <= RECEIVING_CH2;                                  
                when RECEIVING_CH2 =>                               --Second bit of the channel selection
                    next_state <= RECEIVING_W;
                when RECEIVING_W =>                                 --This loops until the input are valid for choosing the memory address
                    if i_start = '0' then
                        next_state <= WAIT_MEM;                      
                    end if;
                    --!! elsif misses for the default branch         
                when WAIT_MEM =>                                    --Next state is picked up to the z_sel value in a MUX-like way 
                    case z_sel is                                    
                        when "00" =>
                            next_state <= ACTIVATE_Z0;               
                        when "01" =>
                            next_state <= ACTIVATE_Z1;
                        when "10" =>
                            next_state <= ACTIVATE_Z2;
                        when "11" =>
                            next_state <= ACTIVATE_Z3;
                        when others =>
                            next_state <= cur_state;
                     end case;
                when ACTIVATE_Z0 =>                                 --Output channels register (reg_zx) are updated
                    next_state <= PRINT_OUT;
                when ACTIVATE_Z1 =>                                 --Output channels register (reg_zx) are updated
                    next_state <= PRINT_OUT;                        
                when ACTIVATE_Z2 =>                                 --Output channels register (reg_zx) are updated
                    next_state <= PRINT_OUT;
                when ACTIVATE_Z3 =>                                 --Output channels register (reg_zx) are updated
                    next_state <= PRINT_OUT;    
                when PRINT_OUT =>                                   --Output channels show their register data for 1 clock cycle
                    next_state <= INITIATE;                         --Then the FSM goes back to the default state "INITIATE"
            end case;
        end process;
        
 --Signal setting managed by the Finied State Machine
    FSM : process(cur_state)
    begin
        --Default values
        o_mem_we <= '0';
        o_mem_en <= '0';
        r0_load <= '0';
        r1_load <= '0';
        r2_load <= '0';
        r3_load <= '0';
        rz_load <= '1';
        o_done <= '0';
        out_enable <= '0';
        rw_load <= '0';        
        case cur_state is
            when INITIATE =>                                        --All signals are set to their default values
            when RECEIVING_CH1 =>                                   --First bit of the channel selection is stored
            when RECEIVING_CH2 =>                                   --Second bit of selection stored
                rw_load <= '1';
                rz_load <= '0'; 
        when RECEIVING_W =>                                         --Memory address is stored in a dedicated register
                rw_load <= '1';
                rz_load <= '0';
            when WAIT_MEM =>                                        --The memory in enabled to return the requested data
                o_mem_en <= '1';
            when ACTIVATE_Z0 =>                                     --Z0 register is set for write-mode
                r0_load <= '1';
            when ACTIVATE_Z1 =>                                     --Z1 register is set for write-mode
                r1_load <= '1';
            when ACTIVATE_Z2 =>                                     --Z2 register is set for write-mode
                r2_load <= '1';
            when ACTIVATE_Z3 =>                                     --Z3 register is set for write-mode
                r3_load <= '1';
            when PRINT_OUT =>                                       --o_done signals stand for "process completed"
                o_done <= '1';
                out_enable <= '1';
                
         end case;
    end process;
end Behavioral;


architecture Behavioral of datapath is

--Inner registers declaration
signal reg_w : std_logic_vector(15 downto 0);                       -- 16-bits register for the memory address requested
signal reg_z : std_logic_vector(1 downto 0);                        -- 2-bits register to choose the output channel
signal reg_z0 : std_logic_vector(7 downto 0);                       -- 8-bits registers to store the output of each channel
signal reg_z1 : std_logic_vector(7 downto 0);
signal reg_z2 : std_logic_vector(7 downto 0);
signal reg_z3 : std_logic_vector(7 downto 0);

begin

    REGZ_MANAGEMENT : process(i_clk)                                --The process is only sensitive to the clock signal 
        begin 
        if rising_edge(i_clk) then
            if(i_rst = '1') then                                    --On RESET reg_z is cleared
                reg_z <= "00";
            elsif(rz_load = '1') then                               --When I'm selecting the output channel 
                reg_z <= reg_z(0) & i_w;                            --Reg_z register is filled left-shifting and writing in LSB position     
                                                                    -- to keep it aligned
            elsif(rz_load = '0') then                               --When I'm not selecting the output channel
                z_sel <= reg_z;                                     --Z_sel signal is bound to reg_z contain    
            end if;
        end if;
        end process; 

    REGW_MANAGEMENT : process (i_clk)                               --The process is only sensitive to the clock signal
        begin
        if rising_edge(i_clk) then
            if i_start = '1' and rw_load = '1' then                 --When I'm receiving the memory address needed
                reg_w <= reg_w(14 downto 0) & i_w;                  --Reg_w register is filled left-shifting and writing in LSB position
                                                                    -- to keep it aligned to the right       
            elsif i_start = '1' and rw_load = '0' then              --When I finished receiving the memory address
                reg_w <= "0000000000000000";                        --Reg_w gets cleared ready to store the next address
            elsif (i_rst = '1') then                                --On RESET reg_w is cleared
                reg_w <= "0000000000000000";                        
            end if;
        end if;           
        end process; 
    
    WRITE_REG0 : process(i_clk)                                     --The process is only sensitive to the clock signal       
        begin
        if rising_edge(i_clk) then                                  
            if(i_rst = '1') then                                    --On RESET output data registers are cleared
                reg_z0 <= "00000000";
            elsif(r0_load = '1') then                               --RX_load = '1' means the memory returned the data ready to be stored
                reg_z0 <= i_mem_data;                               --Requested data is stored in the corresponding channel register 
            end if;
        end if;
        end process;
            
    WRITE_REG1 : process(i_clk)                                     --The process is only sensitive to the clock signal                   
        begin
        if rising_edge(i_clk) then
            if(i_rst = '1') then                                    --On RESET output data registers are cleared                          
                reg_z1 <= "00000000";
            elsif(r1_load = '1') then                               --RX_load = '1' means the memory returned the data ready to be stored 
                reg_z1 <= i_mem_data;                               --Requested data is stored in the corresponding channel register      
            end if;
        end if;
        end process;
            
     WRITE_REG2 : process(i_clk)                                    --The process is only sensitive to the clock signal                   
        begin
        if rising_edge(i_clk) then
            if(i_rst = '1') then                                    --On RESET output data registers are cleared                          
                reg_z2 <= "00000000";
            elsif(r2_load = '1') then                               --RX_load = '1' means the memory returned the data ready to be stored 
                reg_z2 <= i_mem_data;                               --Requested data is stored in the corresponding channel register      
            end if;
        end if;
        end process;          
    
     WRITE_REG3 : process(i_clk)                                    --The process is only sensitive to the clock signal                   
        begin
        if rising_edge(i_clk) then
            if(i_rst = '1') then                                    --On RESET output data registers are cleared                          
                reg_z3 <= "00000000";
            elsif(r3_load = '1') then                               --RX_load = '1' means the memory returned the data ready to be stored 
                reg_z3 <= i_mem_data;                               --Requested data is stored in the corresponding channel register      
            end if;
        end if;
        end process;    
                 
---------------------MUX SECTION---------------------
    with rw_load select                                             --This MUX controls o_mem_addr 
        o_mem_addr <= reg_w when '0',                               --O_mem_addr is bound to reg_w only when this is ready (rw_load = '0')            
                      "0000000000000000" when others;
    
    with out_enable select                                          --?
        o_z0 <= reg_z0 when '1',                                    --|
                "00000000" when others;                             --|
                                                                    --|
    with out_enable select                                          --|
        o_z1 <= reg_z1 when '1',                                    --|
                "00000000" when others;                             --|         These MUXes control o_zx
                                                                    --|         O_zx are bound to their respective register when 
    with out_enable select                                          --|         the register data is ready (out_enable = '1')
        o_z2 <= reg_z2 when '1',                                    --|
                "00000000" when others;                             --|
                                                                    --|
    with out_enable select                                          --|
        o_z3 <= reg_z3 when '1',                                    --|
                "00000000" when others;                             --?
-----------------------------------------------------
    end Behavioral;