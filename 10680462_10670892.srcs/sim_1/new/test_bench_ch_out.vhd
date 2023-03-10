library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;
USE std.textio.ALL;

entity test_bench_ch_out is

end test_bench_ch_out;

architecture Behavioral of test_bench_ch_out is
    constant clock : time := 100 ns;
    
    signal mem_addr : std_logic_vector (15 downto 0) := (others => '0');------
    signal tb_done : std_logic;
    signal tb_rst : std_logic := '0'; -----
    signal tb_start : std_logic := '0'; -----
    signal tb_clk : std_logic := '0'; -----
    signal tb_z0 : std_logic_vector (7 downto 0);
    signal tb_z1: std_logic_vector (7 downto 0);
    signal tb_z2: std_logic_vector (7 downto 0);
    signal tb_z3 : std_logic_vector (7 downto 0);
    signal tb_w : std_logic;
    signal i_mem_data : std_logic_vector (7 downto 0);
    signal o_mem_data : std_logic_vector (7 downto 0);
    signal mem_en : std_logic;
    signal mem_we : std_logic;
    
    
    -------------MEMORY INITIALIZATION-----------------
    constant SCENARIOLENGTH : INTEGER := 206; --                 (RST)  + (CH0-MEM[1]) +      20 CYCLES         +  (CH0-MEM[826])  +       20 CYCLES        + (CH1-MEM[3]) +      20 CYCLES         + (CH1-MEM[1863]) +      20 CYCLES         + (CH2-MEM[777]) +      20 CYCLES         + (CH3-MEM[2]) +      20 CYCLES         + RST + (CH3-MEM[826])  +      20 CYCLES        
    signal scene_rst : unsigned(0 TO SCENARIOLENGTH - 1)     := "01110" &    "000"     & "00000000000000000000" &   "000000000000" & "00000000000000000000" &    "0000"    & "00000000000000000000" & "0000000000000" & "00000000000000000000" & "000000000000" & "00000000000000000000" &    "0000"    & "00000000000000000000" & "1" & "000000000000"  & "00000000000000000000";    --rst
    signal scene_start : unsigned(0 TO SCENARIOLENGTH - 1)   := "00000" &    "111"     & "00000000000000000000" &   "111111111111" & "00000000000000000000" &    "1111"    & "00000000000000000000" & "1111111111111" & "00000000000000000000" & "111111111111" & "00000000000000000000" &    "1111"    & "00000000000000000000" & "0" & "111111111111"  & "00000000000000000000";    --start
    signal scene_w : unsigned(0 TO SCENARIOLENGTH - 1)       := "00000" &    "001"     & "00000000000000000000" &   "001100111010" & "00000000000000000000" &    "0111"    & "00000000000000000000" & "0111101000111" & "00000000000000000000" & "101100001001" & "00000000000000000000" &    "1110"    & "00000000000000000000" & "0" & "111100111010"  & "00000000000000000000";    --w                                                                                              

    type ram_type is array (65535 DOWNTO 0) of std_logic_vector(7 DOWNTO 0);
    signal RAM : ram_type := (  0 => std_logic_vector(to_unsigned(19, 8)),      --13
                                1 => std_logic_vector(to_unsigned(16, 8)),      --10
                                2 => std_logic_vector(to_unsigned(9, 8)),       --9
                                3 => std_logic_vector(to_unsigned(27, 8)),      --1b    
                                6 => std_logic_vector(to_unsigned(88, 8)),      --58    -- lati di un esagono
                                33 => std_logic_vector(to_unsigned(0, 8)),      --00    -- gli anni di Cristo
                                476 => std_logic_vector(to_unsigned(1453, 8)),  --5ad   -- caduta Impero Romano occ/or
                                777 => std_logic_vector(to_unsigned(63, 8)),    --3f    -- jackpot
                                826 => std_logic_vector(to_unsigned(52, 8)),    --34
                                1863 => std_logic_vector(to_unsigned(47, 8)),   --2f    -- anno di fondazione del Politecnico
                                1929 => std_logic_vector(to_unsigned(1908, 8)), --774   -- anno di nascita Quine/McCluskey
                                1984 => std_logic_vector(to_unsigned(1948, 8)), --79c   -- BigBrother
                                32768 => std_logic_vector(to_unsigned(25, 8)),  --19
                                65534 => std_logic_vector(to_unsigned(241 ,8)), --f1
                                65535 => std_logic_vector(to_unsigned(98,8)),   --62
                                others => "00000000"
                            );
     -------------------------------------------------------  
     
      component project_reti_logiche is
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
    end component project_reti_logiche;                       
begin
PROJECT : project_reti_logiche
    port map(
        i_clk => tb_clk,
        i_start => tb_start,
        i_rst => tb_rst,
        i_w => tb_w,

        o_z0 => tb_z0,
        o_z1 => tb_z1,
        o_z2 => tb_z2,
        o_z3 => tb_z3,
        o_done => tb_done,

        o_mem_addr => mem_addr,
        o_mem_en => mem_en,
        o_mem_we => mem_we,
        i_mem_data => o_mem_data -- Input to our module are memory output
    );


    -- Process to read and write memory
    -- Taken from specific, using fitting names
    MEMORY_MANAGMENT: process(tb_clk)
        begin
            if tb_clk'event and tb_clk = '1' then
                if mem_en = '1' then
                    if mem_we = '1' then
                        RAM(conv_integer(mem_addr)) <= i_mem_data;
                                                   o_mem_data <= i_mem_data after 2 ns;
                    else
                        o_mem_data <= RAM(conv_integer(mem_addr)) after 2 ns;
                    end if;
                end if;
            end if;
        end process;
    
    -- Process to select the right value 
    ALLOCATESCENE : process (tb_clk)
    begin
        if tb_clk'event and tb_clk = '0' then
            tb_rst <= scene_rst(0);
            tb_w <= scene_w(0);
            tb_start <= scene_start(0);
            scene_rst <= scene_rst(1 TO SCENARIOLENGTH - 1) & '0';
            scene_w <= scene_w(1 TO SCENARIOLENGTH - 1) & '0';
            scene_start <= scene_start(1 TO SCENARIOLENGTH - 1) & '0';
        end if;
    end process;
    
    -- Process to generate the clock
    GENERATING_CLOCK :  process
    begin
        wait for clock;
        tb_clk <= '1';
        wait for clock;
        tb_clk <= '0';
    end process;
    
    --Process to actually run the test and verify results
    --New specific assert to test certain features
    RUNTEST : process is
    begin
        i_mem_data <= "00000000";
        
        -- checking setup routine: RESET
        wait until tb_rst = '1';
        wait until tb_rst = '0';
        assert tb_done = '0' report "TEST FAILED (postreset DONE != 0 )" severity failure;
        assert tb_z0 = "00000000" report "TEST FAILED (postreset Z0!= 0 ) found " severity failure; 
        assert tb_z1 = "00000000" report "TEST FAILED (postreset Z1 != 0 ) found " severity failure; 
        assert tb_z2 = "00000000" report "TEST FAILED (postreset Z2 != 0 ) found " severity failure; 
        assert tb_z3 = "00000000" report "TEST FAILED (postreset Z3 != 0 ) found "severity failure; 
        wait until tb_start = '1';
        assert tb_z0 = "00000000" report "TEST FAILED (poststart Z0--Z3 != 0 ) found " severity failure; 
        assert tb_z1 = "00000000" report "TEST FAILED (poststart Z0--Z3 != 0 ) found " severity failure; 
        assert tb_z2 = "00000000" report "TEST FAILED (poststart Z0--Z3 != 0 ) found " severity failure; 
        assert tb_z3 = "00000000" report "TEST FAILED (poststart Z0--Z3 != 0 ) found " severity failure; 
        
        --CHECK: MEM[1] on CH0 -> 10(hex) on z0
        wait until tb_done = '1';
        wait for clock/2;
        assert tb_z0 = std_logic_vector(to_unsigned(16, 8))  report "TEST FAILED (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; --. Expected  209  found " & integer'image(tb_z0))))  severity failure;
        
        --Channel closed when o_done = '0'
        wait until tb_done = '0';
        WAIT FOR clock/2;
        assert tb_z0 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        assert tb_z1 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        assert tb_z2 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        assert tb_z3 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        
        --CHECK: MEM[826] on CH0 -> 34(hex) on z0
        --OVERWRITE!!
        wait until tb_start = '1';
        wait until tb_done = '1';
        wait for clock/2;
        assert tb_z0 = std_logic_vector(to_unsigned(52, 8))  report "TEST FAILED (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; --. Expected  209  found " & integer'image(tb_z0))))  severity failure;
        
        --Channel closed when o_done = '0'
        wait until tb_done = '0';
        WAIT FOR clock/2;
        assert tb_z0 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        assert tb_z1 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        assert tb_z2 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        assert tb_z3 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        
        --CHECK: MEM[3] on CH1 -> 1b(hex) on z1
        wait until tb_start = '1';
        wait until tb_done = '1';       
        wait for clock/2;
        assert tb_z0 = std_logic_vector(to_unsigned(52, 8))  report "TEST FAILED (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; --. Expected  209  found " & integer'image(tb_z0))))  severity failure;
        assert tb_z1 = std_logic_vector(to_unsigned(27, 8))  report "TEST FAILED (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; --. Expected  209  found " & integer'image(tb_z0))))  severity failure;
        
        --Channel closed when o_done = '0'
        wait until tb_done = '0';
        WAIT FOR clock/2;
        assert tb_z0 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        assert tb_z1 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        assert tb_z2 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        assert tb_z3 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        
        --CHECK: MEM[1863] on CH1 -> 2f(hex) on z1
        --OVERWRITE!!
        wait until tb_start = '1';
        wait until tb_done = '1';       
        wait for clock/2;
        assert tb_z0 = std_logic_vector(to_unsigned(52, 8))  report "TEST FAILED (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; --. Expected  209  found " & integer'image(tb_z0))))  severity failure;
        assert tb_z1 = std_logic_vector(to_unsigned(47, 8))  report "TEST FAILED (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; --. Expected  209  found " & integer'image(tb_z0))))  severity failure;
        
        --Channel closed when o_done = '0'
        wait until tb_done = '0';
        WAIT FOR clock/2;
        assert tb_z0 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        assert tb_z1 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        assert tb_z2 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        assert tb_z3 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        
        --CHECK: MEM[777] on CH2 -> 3f(hex) on z2        
        wait until tb_start = '1';
        wait until tb_done = '1';       
        wait for clock/2;
        assert tb_z0 = std_logic_vector(to_unsigned(52, 8))  report "TEST FAILED (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; --. Expected  209  found " & integer'image(tb_z0))))  severity failure;
        assert tb_z1 = std_logic_vector(to_unsigned(47, 8))  report "TEST FAILED (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; --. Expected  209  found " & integer'image(tb_z0))))  severity failure;
        assert tb_z2 = std_logic_vector(to_unsigned(63, 8))  report "TEST FAILED (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; --. Expected  209  found " & integer'image(tb_z0))))  severity failure;
        
        --Channel closed when o_done = '0'
        wait until tb_done = '0';
        WAIT FOR clock/2;
        assert tb_z0 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; 
        assert tb_z1 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; 
        assert tb_z2 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; 
        assert tb_z3 = "00000000" report "TEST FAILED (postdone Z0--Z3 != 0 ) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; 
        
        --CHECK: MEM[2] on CH3 -> 9(hex) on z3        
        wait until tb_start = '1';
        wait until tb_done = '1';       
        wait for clock/2;
        assert tb_z0 = std_logic_vector(to_unsigned(52, 8))  report "TEST FAILED (Z0 ---) found " & integer'image(to_integer(unsigned(tb_z0))) severity failure; --. Expected  209  found " & integer'image(tb_z0))))  severity failure;
        assert tb_z1 = std_logic_vector(to_unsigned(47, 8))  report "TEST FAILED (Z1 ---) found " & integer'image(to_integer(unsigned(tb_z1))) severity failure; --. Expected  209  found " & integer'image(tb_z0))))  severity failure;
        assert tb_z2 = std_logic_vector(to_unsigned(63, 8))  report "TEST FAILED (Z2 ---) found " & integer'image(to_integer(unsigned(tb_z2))) severity failure; --. Expected  209  found " & integer'image(tb_z0))))  severity failure;
        assert tb_z3 = std_logic_vector(to_unsigned(9, 8))  report "TEST FAILED (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; --. Expected  209  found " & integer'image(tb_z0))))  severity failure;
        
        --RESET
        wait until tb_rst = '1';
        wait until tb_rst = '0';
        assert tb_done = '0' report "TEST FAILED (postreset DONE != 0 )" severity failure;
        assert tb_z0 = "00000000" report "TEST FAILED (postreset Z0!= 0 ) found " severity failure; 
        assert tb_z1 = "00000000" report "TEST FAILED (postreset Z1 != 0 ) found " severity failure; 
        assert tb_z2 = "00000000" report "TEST FAILED (postreset Z2 != 0 ) found " severity failure; 
        assert tb_z3 = "00000000" report "TEST FAILED (postreset Z3 != 0 ) found "severity failure;
        
        --CHECK: MEM[826] on CH3 -> 34(hex) on z3                
        wait until tb_done = '1';       
        wait for clock/2;
        assert tb_z3 = std_logic_vector(to_unsigned(52, 8))  report "TEST FAILED (Z3 ---) found " & integer'image(to_integer(unsigned(tb_z3))) severity failure; --. Expected  209  found " & integer'image(tb_z0))))  severity failure;
        wait for clock;


        assert false report "Simulation Ended! TEST PASSED " severity failure;
    end process;
end Behavioral;