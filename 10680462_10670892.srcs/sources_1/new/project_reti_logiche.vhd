
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
        r0_load : in std_logic;
        r1_load : in std_logic;
        r2_load : in std_logic;
        r3_load : in std_logic;
        rw_load : in std_logic;
        rz_load : in std_logic;
        z_sel : out std_logic_vector(1 downto 0);
        o_done : out std_logic;
        i_done : in std_logic;
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
        o_done : out std_logic;
        i_done : in std_logic;
        i_mem_data : in std_logic_vector(7 downto 0);
        o_mem_addr : out std_logic_vector(15 downto 0);
        o_z0 : out std_logic_vector(7 downto 0);
        o_z1 : out std_logic_vector(7 downto 0);
        o_z2 : out std_logic_vector(7 downto 0);
        o_z3 : out std_logic_vector(7 downto 0) ;
        i_start : in std_logic     
        );
end component;

--Inner signals declaration
signal r0_load : std_logic;
signal r1_load : std_logic;
signal r2_load : std_logic;
signal  r3_load : std_logic;
signal  rw_load : std_logic;
signal  rz_load : std_logic;
signal  z_sel : std_logic_vector(1 downto 0);
signal i_done : std_logic;
--States type declaration
type S is(INITIATE, RECEIVING_CH1, RECEIVING_CH2, RECEIVING_W, WAIT_MEM, ACTIVATE_Z0, ACTIVATE_Z1, ACTIVATE_Z2, ACTIVATE_Z3, PRINT_OUT, FINISH);
signal cur_state, next_state : S;

begin
    DATAPATH0: datapath port map(
            i_clk,
            i_rst,
            i_w,
            r0_load,
            r1_load,
            r2_load,
            r3_load,
            rw_load,
            rz_load,
            z_sel,
            o_done,
            i_done,
            i_mem_data,
            o_mem_addr,
            o_z0,
            o_z1,
            o_z2,
            o_z3,
            i_start
        );
 
 --Reset process for the FSM: when reset goes on INITIATE
    RESET : process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            cur_state <= INITIATE;
        elsif i_clk'event and i_clk = '1' then
        cur_state <= next_state;
        end if;
    end process;
    
 --Next State Function for the FSM (NSF)
    NSF : process(cur_state, i_start, z_sel)
        begin
            next_state <= cur_state;
            case cur_state is
                when INITIATE =>
                    if i_start = '1' then
                        next_state <= RECEIVING_CH1;
                    end if;    
                    --!! elsif misses for the default branch
                when RECEIVING_CH1 => 
                    next_state <= RECEIVING_CH2;
                when RECEIVING_CH2 => 
                    next_state <= RECEIVING_W;
                when RECEIVING_W =>
                    if i_start = '0' then
                        next_state <= WAIT_MEM;
                    end if;
                    --!! elsif misses for the default branch
                when WAIT_MEM =>
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
                when ACTIVATE_Z0 =>
                    next_state <= PRINT_OUT;
                when ACTIVATE_Z1 =>
                    next_state <= PRINT_OUT;                          
                when ACTIVATE_Z2 =>
                    next_state <= PRINT_OUT;
                when ACTIVATE_Z3 =>
                    next_state <= PRINT_OUT;    
                when PRINT_OUT =>
                    next_state <= FINISH;
                when FINISH =>
                    next_state <= INITIATE;
            end case;
        end process;
        
 --Signal setting
    SETTING: process(cur_state)
    begin
    --Default values
        o_mem_we <= '0';
        o_mem_en <= '0';
        r0_load <= '0';
        r1_load <= '0';
        r2_load <= '0';
        r3_load <= '0';
        --rw_load <= '0';
        rz_load <= '1';
        --z_sel <= "XX";
        --o_done <= '0';
        i_done <= '0';
       -- o_mem_addr <= "0000000000000000";
        
        case cur_state is
            when INITIATE => 
                
            when RECEIVING_CH1 => 
                rz_load <= '1';
            when RECEIVING_CH2 =>
                rw_load <= '1';
                rz_load <= '0'; 
            when RECEIVING_W =>
                rz_load <= '0'; 
            when WAIT_MEM =>
                o_mem_en <= '1';
                rw_load <= '0';
            when ACTIVATE_Z0 => 
                r0_load <= '1';
                rw_load <= '0';
            when ACTIVATE_Z1 => 
                r1_load <= '1';
                rw_load <= '0';
            when ACTIVATE_Z2 => 
                r2_load <= '1';
                rw_load <= '0';
            when ACTIVATE_Z3 => 
                r3_load <= '1';
                rw_load <= '0';
            when PRINT_OUT =>
                o_done <= '1';
                i_done <= '1';
                r0_load <= '0';
                r1_load <= '0';
                r2_load <= '0';
                r3_load <= '0';
                rw_load <= '0';
            when FINISH =>
                o_done <= '0';
         end case;

    end process;

end Behavioral;


architecture Behavioral of datapath is
--Inner registers declaration
signal reg_w : std_logic_vector(15 downto 0);
signal reg_z : std_logic_vector(1 downto 0);
signal reg_z0 : std_logic_vector(7 downto 0);
signal reg_z1 : std_logic_vector(7 downto 0);
signal reg_z2 : std_logic_vector(7 downto 0);
signal reg_z3 : std_logic_vector(7 downto 0);
signal start : std_logic;
begin
    CHOSING_Z : process(i_clk, i_rst)
            begin                
            z_sel <= reg_z;
            
                if(i_rst = '1') then
                    reg_z <= "X0";
                elsif rising_edge(i_clk) then
                    if(rz_load = '1') then
                        reg_z <= reg_z(0) & i_w;
                    end if;
                        
                 end if;
            end process; 
                        
    CREATING_ADDR : process(i_clk, i_rst, i_start)    -- 
            begin
          o_mem_addr <= reg_w;
                if(i_rst = '1') then
                    reg_w <= "0000000000000000";
                elsif rising_edge(i_start) then
                    reg_w <= "0000000000000000";
                elsif rising_edge(i_clk) and i_start = '1' then
                    if(rw_load = '1') then
                        reg_w <= reg_w(14 downto 0) & i_w;
                    end if;
                 end if;
            end process; 
            
     
    WRITE_REG0 : process(i_clk, i_rst)
            begin
                if(i_rst = '1') then
                    reg_z0 <= "00000000";
                elsif rising_edge(i_clk) then
                    if(r0_load = '1') then
                        reg_z0 <= i_mem_data;
                    end if;
                 end if;
            end process;
         
    WRITE_REG1 : process(i_clk, i_rst)
            begin
                if(i_rst = '1') then
                    reg_z1 <= "00000000";
                elsif rising_edge(i_clk) then
                    if(r1_load = '1') then
                        reg_z1 <= i_mem_data;
                    end if;
                 end if;
            end process;
            
    WRITE_REG2 : process(i_clk, i_rst)
            begin
                if(i_rst = '1') then
                    reg_z2 <= "00000000";
                elsif rising_edge(i_clk) then
                    if(r2_load = '1') then
                        reg_z2 <= i_mem_data;
                    end if;
                 end if;
            end process;          
    
    WRITE_REG3 : process(i_clk, i_rst)
            begin
                if(i_rst = '1') then
                    reg_z3 <= "00000000";
                elsif rising_edge(i_clk) then
                    if(r3_load = '1') then
                        reg_z3 <= i_mem_data;
                    end if;
                 end if;
            end process;    

    with i_done select
        o_z0 <= reg_z0 when '1',
                "00000000" when others;    

    with i_done select
        o_z1 <= reg_z1 when '1',
                "00000000" when others; 
                    
    with i_done select
        o_z2 <= reg_z2 when '1',
                "00000000" when others;     
    
    with i_done select
        o_z3 <= reg_z3 when '1',
                "00000000" when others;    
    
    end Behavioral;