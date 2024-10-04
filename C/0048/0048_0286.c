#include <stdio.h>
int main()
{
    enum { aaa_bbb,ccc_ddd,eee_fff,ggg_hhh,iii_jjj }enum_a;
    enum { b_max=2147483644,b_ans1,b_ans2,b_ans3   }enum_b;
    enum { c_min=2147483648,c_ans1,c_ans2,c_ans3   }enum_c;
    enum { d_min=-2147483648,d_ans1,d_ans2,d_ans3  }enum_d;
    enum { e_min=2147483649,e_ans1,e_ans2,e_ans3   }enum_e;

    enum { f_set=4294967296LL,f_ans1,f_ans2,f_ans3 }enum_f;
    enum { g_max=6442450939LL,g_ans1,g_ans2,g_ans3 }enum_g;
    enum { h_set=32767,h_ans1,h_ans2,h_ans3,h_ans4 }enum_h;
    enum { i_set=255,i_ans1,i_ans2,i_ans3,i_ans4   }enum_i;

    printf("***TEST FOR TOKEN***STARTED\n");
    if(ccc_ddd == 1)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
    if(iii_jjj == 4)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }
    if(b_ans1 == 2147483645)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
    if(b_ans3 == 2147483647)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }
    if(c_ans1 == -2147483647)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }
    if(c_ans3 == -2147483645)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }
    if(d_ans1 == -2147483647)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }
    if(d_ans3 == -2147483645)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }
    if(e_ans1 == -2147483646)
    {
        printf("TEST09***O   K***\n");
    }
    else
    {
        printf("TEST09***N   G***\n");
    }
    if(e_ans3 == -2147483644)
    {
        printf("TEST10***O   K***\n");
    }
    else
    {
        printf("TEST10***N   G***\n");
    }
#if defined(__GNUC__)
    if(f_ans1 == 4294967297LL)
#else
    if(f_ans1 == 1)
#endif
    {
        printf("TEST11***O   K***\n");
    }
    else
    {
        printf("TEST11***N   G***\n");
    }
#if defined(__GNUC__)
    if(f_ans3 == 4294967299LL)
#else
    if(f_ans3 == 3)
#endif
    {
        printf("TEST12***O   K***\n");
    }
    else
    {
        printf("TEST12***N   G***\n");
    }
#if defined(__GNUC__)
    if(g_ans1 == 6442450940LL)
#else
    if(g_ans1 == 2147483644)
#endif
    {
        printf("TEST13***O   K***\n");
    }
    else
    {
        printf("TEST13***N   G***\n");
    }
#if defined(__GNUC__)
    if(g_ans3 == 6442450942LL)
#else
    if(g_ans3 == 2147483646)
#endif
    {
        printf("TEST14***O   K***\n");
    }
    else
    {
        printf("TEST14***N   G***\n");
    }
    if(h_ans1 == 32768)
    {
        printf("TEST15***O   K***\n");
    }
    else
    {
        printf("TEST16***N   G***\n");
    }
    if(h_ans4 == 32771)
    {
        printf("TEST16***O   K***\n");
    }
    else
    {
        printf("TEST17***N   G***\n");
    }
    if(i_ans1 == 256)
    {
        printf("TEST17***O   K***\n");
    }
    else
    {
        printf("TEST17***N   G***\n");
    }
    if(i_ans4 == 259)
    {
        printf("TEST18***O   K***\n");
    }
    else
    {
        printf("TEST18***N   G***\n");
    }

    printf("***TEST FOR TOKEN***END\n");
}
