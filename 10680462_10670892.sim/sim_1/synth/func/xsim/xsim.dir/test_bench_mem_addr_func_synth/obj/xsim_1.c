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
IKI_DLLESPEC extern void execute_719(char*, char *);
IKI_DLLESPEC extern void execute_720(char*, char *);
IKI_DLLESPEC extern void execute_721(char*, char *);
IKI_DLLESPEC extern void execute_722(char*, char *);
IKI_DLLESPEC extern void execute_37(char*, char *);
IKI_DLLESPEC extern void execute_39(char*, char *);
IKI_DLLESPEC extern void execute_40(char*, char *);
IKI_DLLESPEC extern void execute_41(char*, char *);
IKI_DLLESPEC extern void execute_59(char*, char *);
IKI_DLLESPEC extern void execute_63(char*, char *);
IKI_DLLESPEC extern void execute_67(char*, char *);
IKI_DLLESPEC extern void execute_71(char*, char *);
IKI_DLLESPEC extern void execute_74(char*, char *);
IKI_DLLESPEC extern void execute_124(char*, char *);
IKI_DLLESPEC extern void execute_281(char*, char *);
IKI_DLLESPEC extern void execute_286(char*, char *);
IKI_DLLESPEC extern void execute_288(char*, char *);
IKI_DLLESPEC extern void execute_289(char*, char *);
IKI_DLLESPEC extern void execute_290(char*, char *);
IKI_DLLESPEC extern void execute_353(char*, char *);
IKI_DLLESPEC extern void execute_423(char*, char *);
IKI_DLLESPEC extern void execute_458(char*, char *);
IKI_DLLESPEC extern void execute_493(char*, char *);
IKI_DLLESPEC extern void execute_497(char*, char *);
IKI_DLLESPEC extern void execute_509(char*, char *);
IKI_DLLESPEC extern void execute_523(char*, char *);
IKI_DLLESPEC extern void execute_525(char*, char *);
IKI_DLLESPEC extern void execute_526(char*, char *);
IKI_DLLESPEC extern void execute_561(char*, char *);
IKI_DLLESPEC extern void execute_562(char*, char *);
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
IKI_DLLESPEC extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_87(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_374(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_381(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_388(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_395(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_402(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_409(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_416(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_423(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_430(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_437(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_444(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_451(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_458(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_465(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_472(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_479(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_491(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_499(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_507(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_515(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_523(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_531(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_539(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_547(char*, char*, unsigned, unsigned, unsigned);
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
IKI_DLLESPEC extern void transaction_765(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_772(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_785(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_792(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[98] = {(funcp)execute_719, (funcp)execute_720, (funcp)execute_721, (funcp)execute_722, (funcp)execute_37, (funcp)execute_39, (funcp)execute_40, (funcp)execute_41, (funcp)execute_59, (funcp)execute_63, (funcp)execute_67, (funcp)execute_71, (funcp)execute_74, (funcp)execute_124, (funcp)execute_281, (funcp)execute_286, (funcp)execute_288, (funcp)execute_289, (funcp)execute_290, (funcp)execute_353, (funcp)execute_423, (funcp)execute_458, (funcp)execute_493, (funcp)execute_497, (funcp)execute_509, (funcp)execute_523, (funcp)execute_525, (funcp)execute_526, (funcp)execute_561, (funcp)execute_562, (funcp)transaction_4, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_48, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_57, (funcp)transaction_59, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_62, (funcp)transaction_66, (funcp)transaction_73, (funcp)transaction_80, (funcp)transaction_87, (funcp)transaction_374, (funcp)transaction_381, (funcp)transaction_388, (funcp)transaction_395, (funcp)transaction_402, (funcp)transaction_409, (funcp)transaction_416, (funcp)transaction_423, (funcp)transaction_430, (funcp)transaction_437, (funcp)transaction_444, (funcp)transaction_451, (funcp)transaction_458, (funcp)transaction_465, (funcp)transaction_472, (funcp)transaction_479, (funcp)transaction_491, (funcp)transaction_499, (funcp)transaction_507, (funcp)transaction_515, (funcp)transaction_523, (funcp)transaction_531, (funcp)transaction_539, (funcp)transaction_547, (funcp)transaction_559, (funcp)transaction_567, (funcp)transaction_575, (funcp)transaction_583, (funcp)transaction_591, (funcp)transaction_599, (funcp)transaction_607, (funcp)transaction_615, (funcp)transaction_627, (funcp)transaction_635, (funcp)transaction_643, (funcp)transaction_651, (funcp)transaction_659, (funcp)transaction_667, (funcp)transaction_675, (funcp)transaction_683, (funcp)transaction_695, (funcp)transaction_703, (funcp)transaction_711, (funcp)transaction_719, (funcp)transaction_727, (funcp)transaction_735, (funcp)transaction_743, (funcp)transaction_751, (funcp)transaction_765, (funcp)transaction_772, (funcp)transaction_785, (funcp)transaction_792};
const int NumRelocateId= 98;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/test_bench_mem_addr_func_synth/xsim.reloc",  (void **)funcTab, 98);
	iki_vhdl_file_variable_register(dp + 1228944);
	iki_vhdl_file_variable_register(dp + 1229000);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/test_bench_mem_addr_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/test_bench_mem_addr_func_synth/xsim.reloc");

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
    iki_set_sv_type_file_path_name("xsim.dir/test_bench_mem_addr_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/test_bench_mem_addr_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/test_bench_mem_addr_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
