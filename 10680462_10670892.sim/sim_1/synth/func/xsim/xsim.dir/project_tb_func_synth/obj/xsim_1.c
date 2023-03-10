/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_733(char*, char *);
IKI_DLLESPEC extern void execute_734(char*, char *);
IKI_DLLESPEC extern void execute_735(char*, char *);
IKI_DLLESPEC extern void execute_736(char*, char *);
IKI_DLLESPEC extern void execute_38(char*, char *);
IKI_DLLESPEC extern void execute_42(char*, char *);
IKI_DLLESPEC extern void execute_46(char*, char *);
IKI_DLLESPEC extern void execute_50(char*, char *);
IKI_DLLESPEC extern void execute_52(char*, char *);
IKI_DLLESPEC extern void execute_53(char*, char *);
IKI_DLLESPEC extern void execute_54(char*, char *);
IKI_DLLESPEC extern void execute_119(char*, char *);
IKI_DLLESPEC extern void execute_276(char*, char *);
IKI_DLLESPEC extern void execute_281(char*, char *);
IKI_DLLESPEC extern void execute_348(char*, char *);
IKI_DLLESPEC extern void execute_350(char*, char *);
IKI_DLLESPEC extern void execute_351(char*, char *);
IKI_DLLESPEC extern void execute_352(char*, char *);
IKI_DLLESPEC extern void execute_418(char*, char *);
IKI_DLLESPEC extern void execute_453(char*, char *);
IKI_DLLESPEC extern void execute_488(char*, char *);
IKI_DLLESPEC extern void execute_492(char*, char *);
IKI_DLLESPEC extern void execute_503(char*, char *);
IKI_DLLESPEC extern void execute_519(char*, char *);
IKI_DLLESPEC extern void execute_537(char*, char *);
IKI_DLLESPEC extern void execute_539(char*, char *);
IKI_DLLESPEC extern void execute_540(char*, char *);
IKI_DLLESPEC extern void execute_575(char*, char *);
IKI_DLLESPEC extern void execute_576(char*, char *);
IKI_DLLESPEC extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_62(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_150(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_158(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_166(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_174(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_182(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_190(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_198(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_206(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_214(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_222(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_230(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_238(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_246(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_254(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_262(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_270(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_441(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_448(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_455(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_462(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_469(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_476(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_483(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_490(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_497(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_504(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_511(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_518(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_525(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_532(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_539(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_546(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_559(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_567(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_575(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_583(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_591(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_599(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_607(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_615(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_627(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_635(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_643(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_651(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_659(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_667(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_675(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_683(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_695(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_703(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_711(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_719(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_727(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_735(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_743(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_751(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_763(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_771(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_779(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_787(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_795(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_803(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_811(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_819(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_834(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_841(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_848(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_855(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_863(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_870(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_877(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_884(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[113] = {(funcp)execute_733, (funcp)execute_734, (funcp)execute_735, (funcp)execute_736, (funcp)execute_38, (funcp)execute_42, (funcp)execute_46, (funcp)execute_50, (funcp)execute_52, (funcp)execute_53, (funcp)execute_54, (funcp)execute_119, (funcp)execute_276, (funcp)execute_281, (funcp)execute_348, (funcp)execute_350, (funcp)execute_351, (funcp)execute_352, (funcp)execute_418, (funcp)execute_453, (funcp)execute_488, (funcp)execute_492, (funcp)execute_503, (funcp)execute_519, (funcp)execute_537, (funcp)execute_539, (funcp)execute_540, (funcp)execute_575, (funcp)execute_576, (funcp)transaction_4, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_48, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_57, (funcp)transaction_59, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_62, (funcp)transaction_150, (funcp)transaction_158, (funcp)transaction_166, (funcp)transaction_174, (funcp)transaction_182, (funcp)transaction_190, (funcp)transaction_198, (funcp)transaction_206, (funcp)transaction_214, (funcp)transaction_222, (funcp)transaction_230, (funcp)transaction_238, (funcp)transaction_246, (funcp)transaction_254, (funcp)transaction_262, (funcp)transaction_270, (funcp)transaction_441, (funcp)transaction_448, (funcp)transaction_455, (funcp)transaction_462, (funcp)transaction_469, (funcp)transaction_476, (funcp)transaction_483, (funcp)transaction_490, (funcp)transaction_497, (funcp)transaction_504, (funcp)transaction_511, (funcp)transaction_518, (funcp)transaction_525, (funcp)transaction_532, (funcp)transaction_539, (funcp)transaction_546, (funcp)transaction_559, (funcp)transaction_567, (funcp)transaction_575, (funcp)transaction_583, (funcp)transaction_591, (funcp)transaction_599, (funcp)transaction_607, (funcp)transaction_615, (funcp)transaction_627, (funcp)transaction_635, (funcp)transaction_643, (funcp)transaction_651, (funcp)transaction_659, (funcp)transaction_667, (funcp)transaction_675, (funcp)transaction_683, (funcp)transaction_695, (funcp)transaction_703, (funcp)transaction_711, (funcp)transaction_719, (funcp)transaction_727, (funcp)transaction_735, (funcp)transaction_743, (funcp)transaction_751, (funcp)transaction_763, (funcp)transaction_771, (funcp)transaction_779, (funcp)transaction_787, (funcp)transaction_795, (funcp)transaction_803, (funcp)transaction_811, (funcp)transaction_819, (funcp)transaction_834, (funcp)transaction_841, (funcp)transaction_848, (funcp)transaction_855, (funcp)transaction_863, (funcp)transaction_870, (funcp)transaction_877, (funcp)transaction_884};
const int NumRelocateId= 113;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/project_tb_func_synth/xsim.reloc",  (void **)funcTab, 113);
	iki_vhdl_file_variable_register(dp + 1248296);
	iki_vhdl_file_variable_register(dp + 1248352);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/project_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/project_tb_func_synth/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/project_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/project_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/project_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
