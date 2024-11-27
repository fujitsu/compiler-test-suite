#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

static void no1(), no2(), no3(), no4(), no5(), no6(), no7(), no8(),
            no9(), no10() ;
int main()
{
   puts("***  test start ***");
   puts("*** test is no1() ");
   no1();
   puts("*** test is no2() ");
   no2();
   puts("*** test is no3() ");
   no3();
   puts("*** test is no4() ");
   no4();
   puts("*** test is no5() ");
   no5();
   puts("*** test is no6() ");
   no6();
   puts("*** test is no7() ");
   no7();
   puts("*** test is no8() ");
   no8();
   puts("*** test is no9() ");
   no9();
   puts("*** test is no10() ");
   no10();
   puts("***  test ended ***");
   exit(0);
}

      float      rs1[100],rs2[100],rs3[100],rs4[100],rs5[100];
      double     rd1[100],rd2[100];
static void no1()
{
      int        i,j;
      for(i=0;i<100;i++) rs2[i]=1.0;
      for(i=0;i<100;i++) rs3[i]=rs4[i]=90.;
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
          rs1[i]=(float)atan2(        rs2[i],       rs3[i]);
          rd1[i]=       atan2((double)rs2[i],(double)rs3[i]);
          rs5[i]=(long int)rs3[i]%(long int)rs4[i];
          rd2[i]=(long long int)((double)rs4[i])%
                            (long long int)((double)rs4[i]);
        }
      }
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
          if((long int)rs1[i] != (long int)(float)rd1[i]) goto lb_ng;
          if((long int)rs5[i] != (long int)(float)rd2[i]) goto lb_ng;
        }
      }
 lb_ok:
      puts("*** no.1 => ok ");
      return;
 lb_ng:
      puts("*** no.1 => ng ");
      printf("i=%d   j=%d \n",i,j);
      return;
}

      float      rs1[100],rs2[100],rsx[100];
      double     rd1[100],rd2[100];
static void no2()
{
      int        i,j;
      for(i=0;i<100;i++) rsx[i]=4.0;
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
          rs1[i]=sqrt(rsx[i]);
          rd1[i]=sqrt((double)rsx[i]);
        
        
        }
      }
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
          if((int)rs1[i] != (int)(float)rd1[i]) goto lb_ng;
        
        }
      }
 lb_ok:
      puts("*** no.2 => ok ");
      return;
 lb_ng:
      puts("*** no.2 => ng ");
      return;
}

      float      rse1[100],rse2[100],rse3[100],rsx[100];
      double     rde1[100],rde2[100],rde3[100];
      float      rsl1[100],rsl2[100],rsl3[100];
      float      rsa1[100],rsa2[100],rsa3[100];
      double     rdl1[100],rdl2[100],rdl3[100];
static void no3()
{
      int        i,j;
      for(i=0;i<100;i++) rsx[i]=1.0;
      for(i=0;i<100;i++) rse1[i]=rde1[i]=0.0;
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
          rse1[i]=(float)exp((float)rsx[i]);
          rde1[i]=       exp((double)rsx[i]);
        
        
        
        
          rsl1[i]=log(rsx[i]) ;
        
          rdl1[i]=log((double)rsx[i]) ;
        
        
        
          rsl3[i]=log10(rsx[i]) ;
        
          rdl3[i]=log10((double)rsx[i]) ;
        }
      }
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
          if((int)rse1[i] != (int)(float)rde1[i]) goto lb_ng;
          if((int)rsl1[i] != (int)(float)rdl1[i]) goto lb_ng;
          if((int)rsl3[i] != (int)(float)rdl3[i]) goto lb_ng;
        }
      }
 lb_ok:
      puts("*** no.3 => ok ");
      return;
 lb_ng:
      puts("*** no.3 => ng ");
      return;
}

      float      rs1[100],rs2[100],rs3[100],rs4[100];
      float      rsx[100],rsx2[100];
      double     rd1[100],rd2[100],rd3[100],rd4[100];
static void no4()
{
      int        i,j;
      for(i=0;i<100;i++) rsx[i]=0.0;
      for(i=0;i<100;i++) rsx2[i]=1.0;
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
          rs1[i]=sin(rsx[i]) ;
          rd1[i]=sin((double)rsx[i]) ;
          rs3[i]=tan(rsx2[i]) ;
          rd3[i]=tan((double)rsx2[i]) ;
          rs2[i]=cos(rsx[i]) ;
          rd2[i]=cos((double)rsx[i]) ;
        
        
        }
      }
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
          if((int)rs1[i] != (int)(float)rd1[i]) goto lb_ng;
          if((int)rs2[i] != (int)(float)rd2[i]) goto lb_ng;
          if((int)rs3[i] != (int)(float)rd3[i]) goto lb_ng;
        
        }
      }
 lb_ok:
      puts("*** no.4 => ok ");
      return;
 lb_ng:
      puts("*** no.4 => ng ");
      return;
}

      float      rs1[100],rs2[100],rs3[100];
      float      rsx[100],rsx2[100] ;
      double     rd1[100],rd2[100],rd3[100] ;
static void no5()
{
      int        i,j;
      for(i=0;i<100;i++) rsx[i]=1.0;
      for(i=0;i<100;i++) rsx2[i]=0.0;
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
          rs1[i]=asin(rsx[i]) ;
          rd1[i]=asin((double)rsx[i]) ;
          rs3[i]=atan(rsx2[i]) ;
          rd3[i]=atan((double)rsx2[i]) ;
          rs2[i]=acos(rsx[i]) ;
          rd2[i]=acos((double)rsx[i]) ;
        }
      }
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
          if((int)rs1[i] != (int)(float)rd1[i]) goto lb_ng ;
          if((int)rs2[i] != (int)(float)rd2[i]) goto lb_ng ;
          if((int)rs3[i] != (int)(float)rd3[i]) goto lb_ng ;
        }
      }
 lb_ok:
      puts("*** no.5 => ok ");
      return;
 lb_ng:
      puts("*** no.5 => ng ");
      return;
}

      float      rs1[100],rs2[100],rs3[100];
      float      rsx[100],rsx2[100] ;
      double     rd1[100],rd2[100],rd3[100] ;
static void no6()
{
      int        i,j;
      for(i=0;i<100;i++) rsx[i]=0.0;
      for(i=0;i<100;i++) rsx2[i]=0.0;
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
          rs1[i]=sinh(rsx[i]) ;
          rd1[i]=sinh((double)rsx[i])  ;
          rs3[i]=tanh(rsx2[i]) ;
          rd3[i]=tanh((double)rsx2[i]) ;
          rs2[i]=cosh(rsx[i]) ;
          rd2[i]=cosh((double)rsx[i]) ;
        }
      }
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
          if((int)rs1[i] != (int)(float)rd1[i]) goto lb_ng ;
          if((int)rs2[i] != (int)(float)rd2[i]) goto lb_ng ;
          if((int)rs3[i] != (int)(float)rd3[i]) goto lb_ng ;
        }
      }
 lb_ok:
      puts("*** no.6 => ok ");
      return;
 lb_ng:
      puts("*** no.6 => ng ");
      return;
}

      float      rs1[100],rs2[100] ;
      float      rsx[100] ;
      double     rd1[100],rd2[100] ;
static void no7()
{
      int        i,j;
      for(i=0;i<100;i++) rsx[i]=rs1[i]=rs2[i]=rd1[i]=rd2[i]=0.0;
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
       
        }
      }
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
          if((int)rs1[i] != (int)(float)rd1[i]) goto lb_ng ;
          if((int)rs2[i] != (int)(float)rd2[i]) goto lb_ng ;
        }
      }
 lb_ok:
      puts("*** no.7 => none ");
      return;
 lb_ng:
      puts("*** no.7 => none ");
      return;
}

      float       rs1[100],rs2[100] ;
      float       rsx[100] ;
      double      rd1[100],rd2[100] ;
      double rq1[100],rq2[100] ;
static void no8()
{
      int         i,j;
      for(i=0;i<100;i++) rsx[i]=rs1[i]=rs2[i]=rd1[i]=rd2[i]=1. ;
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
        
        }
      }
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
          if((int)rs1[i] != (int)(float)rd1[i]) goto lb_ng ;
          if((int)rs2[i] != (int)(float)rd2[i]) goto lb_ng ;
        }
      }
 lb_ok:
      puts("*** no.8 => none ");
      return;
 lb_ng:
      puts("*** no.8 => none ");
      return;
}

      float      rs1[100],rs2[100] ;
      float      rsx[100] ;
      double     rd1[100],rd2[100] ;
static void no9()
{
      int        i,j;
      for(i=0;i<100;i++) rsx[i]=rs1[i]=rs2[i]=rd1[i]=rd2[i]=1.9;
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
        
        }
      }
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
          if((int)rs1[i] != (int)(float)rd1[i]) goto lb_ng ;
          if((int)rs2[i] != (int)(float)rd2[i]) goto lb_ng ;
        }
      }
 lb_ok:
      puts("*** no.9 => none ");
      return;
 lb_ng:
      puts("*** no.9 => none ");
      return;
}

      float      rs1[100] ;
      float      rsx[100] ;
      double     rd1[100] ;
static void no10()
{
      int        i,j;
      for(i=0;i<100;i++) rsx[i]=0.0;
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
          rs1[i]=sin(rsx[i])+cos(rsx[i]) ;
          rd1[i]=sin((double)rsx[i])+cos((double)rsx[i]) ;
        }
      }
      for(i=0;i<100;i++)
      {
        j=i;
        if((j%2) == 0)
        {
          if((int)rs1[i] != (int)(float)rd1[i]) goto lb_ng ;
        }
      }
 lb_ok:
      puts("*** no.10 => ok ");
      return;
 lb_ng:
      puts("*** no.10 => ng ");
      return;
}
