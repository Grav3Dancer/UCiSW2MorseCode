/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
extern char *IEEE_P_2717149903;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );
void ieee_p_2717149903_sub_2486506143_2101202839(char *, char *, char *, unsigned int , unsigned int , char *, char *, char *, char *, unsigned char , char *, char *, char *, unsigned char , unsigned char , unsigned char , unsigned char , unsigned char , unsigned char , unsigned char );
void ieee_p_2717149903_sub_539877840_2101202839(char *, char *, char *, unsigned int , unsigned int , char *, char *, unsigned int , unsigned int , char *);


static void simprim_a_1387470219_3879906181_p_0(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 4008);
    t2 = (t0 + 1736U);
    t3 = (t0 + 5144);
    t4 = (t0 + 1416U);
    t5 = (t0 + 2472U);
    t6 = *((char **)t5);
    memcpy(t7, t6, 16U);
    ieee_p_2717149903_sub_539877840_2101202839(IEEE_P_2717149903, t1, t2, 0U, 0U, t3, t4, 0U, 0U, t7);
    t5 = (t0 + 5016);
    *((int *)t5) = 1;

LAB1:    return;
}

static void simprim_a_1387470219_3879906181_p_1(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 4256);
    t2 = (t0 + 1896U);
    t3 = (t0 + 5208);
    t4 = (t0 + 1576U);
    t5 = (t0 + 2592U);
    t6 = *((char **)t5);
    memcpy(t7, t6, 16U);
    ieee_p_2717149903_sub_539877840_2101202839(IEEE_P_2717149903, t1, t2, 0U, 0U, t3, t4, 0U, 0U, t7);
    t5 = (t0 + 5032);
    *((int *)t5) = 1;

LAB1:    return;
}

static void simprim_a_1387470219_3879906181_p_2(char *t0)
{
    char t10[16];
    char t36[16];
    char t42[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    int64 t22;
    char *t23;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    int64 t32;
    char *t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    int t39;
    unsigned int t40;
    char *t41;
    char *t43;
    char *t44;

LAB0:    t1 = (t0 + 1776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1936U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 2952U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((unsigned char *)t1) = t6;
    t1 = (t0 + 4504);
    t2 = (t0 + 1256U);
    t4 = (t0 + 5272);
    t7 = (t0 + 3072U);
    t8 = *((char **)t7);
    t7 = (t0 + 8016);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 1;
    t12 = (t11 + 4U);
    *((int *)t12) = 1;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (1 - 1);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t0 + 2952U);
    t15 = *((char **)t12);
    t3 = *((unsigned char *)t15);
    t12 = xsi_get_transient_memory(64U);
    memset(t12, 0, 64U);
    t16 = t12;
    t17 = (0 - 0);
    t14 = (t17 * 1);
    t18 = (32U * t14);
    t19 = (t16 + t18);
    t20 = t19;
    t21 = (t0 + 1736U);
    t22 = xsi_signal_get_last_event(t21);
    *((int64 *)t20) = t22;
    t23 = (t19 + 8U);
    t24 = (t0 + 2712U);
    t25 = *((char **)t24);
    memcpy(t23, t25, 16U);
    t24 = (t19 + 24U);
    *((unsigned char *)t24) = (unsigned char)1;
    t26 = (1 - 0);
    t27 = (t26 * 1);
    t28 = (32U * t27);
    t29 = (t16 + t28);
    t30 = t29;
    t31 = (t0 + 1896U);
    t32 = xsi_signal_get_last_event(t31);
    *((int64 *)t30) = t32;
    t33 = (t29 + 8U);
    t34 = (t0 + 2832U);
    t35 = *((char **)t34);
    memcpy(t33, t35, 16U);
    t34 = (t29 + 24U);
    *((unsigned char *)t34) = (unsigned char)1;
    t37 = (t36 + 0U);
    t38 = (t37 + 0U);
    *((int *)t38) = 0;
    t38 = (t37 + 4U);
    *((int *)t38) = 1;
    t38 = (t37 + 8U);
    *((int *)t38) = 1;
    t39 = (1 - 0);
    t40 = (t39 * 1);
    t40 = (t40 + 1);
    t38 = (t37 + 12U);
    *((unsigned int *)t38) = t40;
    t38 = ((IEEE_P_2717149903) + 1288U);
    t41 = *((char **)t38);
    memcpy(t42, t41, 16U);
    t38 = (t0 + 2232U);
    t43 = *((char **)t38);
    t5 = *((unsigned char *)t43);
    t38 = (t0 + 2352U);
    t44 = *((char **)t38);
    t6 = *((unsigned char *)t44);
    ieee_p_2717149903_sub_2486506143_2101202839(IEEE_P_2717149903, t1, t2, 0U, 0U, t4, t8, t7, t10, t3, t12, t36, t42, (unsigned char)3, t5, t6, (unsigned char)1, (unsigned char)0, (unsigned char)0, (unsigned char)0);
    t1 = (t0 + 5048);
    *((int *)t1) = 1;

LAB1:    return;
}


extern void simprim_a_1387470219_3879906181_4055108618_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_4055108618", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_4055108618.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1188647136_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1188647136", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1188647136.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1163756686_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1163756686", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1163756686.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1192966871_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1192966871", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1192966871.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1151332025_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1151332025", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1151332025.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1104214076_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1104214076", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1104214076.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1074958859_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1074958859", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1074958859.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1133921893_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1133921893", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1133921893.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1225288559_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1225288559", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1225288559.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1221198168_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1221198168", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1221198168.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1112812626_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1112812626", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1112812626.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1443912016_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1443912016", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1443912016.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1356569531_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1356569531", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1356569531.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1473393511_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1473393511", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1473393511.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1414981385_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1414981385", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1414981385.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1416429326_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1416429326", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1416429326.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1435798846_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1435798846", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1435798846.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1937442444_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1937442444", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1937442444.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_3319017553_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_3319017553", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_3319017553.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1360654732_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1360654732", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1360654732.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_3289799270_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_3289799270", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_3289799270.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1899870421_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1899870421", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1899870421.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_1387470219_3879906181_1924754619_init()
{
	static char *pe[] = {(void *)simprim_a_1387470219_3879906181_p_0,(void *)simprim_a_1387470219_3879906181_p_1,(void *)simprim_a_1387470219_3879906181_p_2};
	xsi_register_didat("simprim_a_1387470219_3879906181_1924754619", "isim/schemOne_schemOne_sch_tb_isim_par.exe.sim/simprim/a_1387470219_3879906181_1924754619.didat");
	xsi_register_executes(pe);
}
