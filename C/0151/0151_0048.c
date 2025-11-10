
















  #include <stdio.h>
  #include "001.h"
static int T(int a);
static int F(int a);







int main()
{



  char *strings="                                                  ";
  int   int_a1=0;
  int   int_a2=0;
  int   int_a3=0;
  int   int_wk1=0;
  int   i;



  header("","rescan,rereplase macro test.") ;



#define FF(a)     GG(a+1) + 1
#define GG(a)     a+1
#define HH(a)     a



  int_wk1=FF(FF(1));              
                                  
                                  
                                  
 ichck("pmr01_01_01",7,int_wk1,"pmr01_01_01");



  int_wk1=FF(GG(1));              
                                  
                                  
  ichck("pmr01_01_02",5,int_wk1,"pmr01_01_02");



  int_wk1=FF(FF(FF(FF(FF(FF(FF(FF(FF(FF(FF(FF(FF(FF(FF(1
            )  )  )  )  )  )  )  )  )  )  )  )  )  )  );
  ichck("pmr01_01_03",46,int_wk1,"pmr01_01_03");



  int_wk1=GG(GG(1));              
                                  
  ichck("pmr01_01_04",3,int_wk1,"pmr01_01_04");



  int_wk1=GG(GG(GG(GG(GG(GG(GG(GG(GG(GG(GG(1
            )  )  )  )  )  )  )  )  )  )  );
  ichck("pmr01_01_05",12,int_wk1,"pmr01_01_05");



  int_wk1=GG(FF(1));              
                                  
                                  
  ichck("pmr01_01_06",5,int_wk1,"pmr01_01_06");



  int_wk1=HH(HH(HH(HH(HH(HH(HH(HH(HH(HH(HH(1
            )  )  )  )  )  )  )  )  )  )  );
  ichck("pmr01_01_07",1,int_wk1,"pmr01_01_07");



 {
  int   AAA=100;
  int   BBB=200;
  int   CCC=300;
  int   DDD=400;
  int   EEE=500;

#define EEE          AAA
#define DDD          EEE
#define CCC          DDD+1
#define BBB          CCC
#define AAA          BBB



  int_wk1=AAA;                    
                                  
  ichck("pmr01_02_01",101,int_wk1,"pmr01_02_01");



  int_wk1= BBB ;                  
                                  
  ichck("pmr01_02_02",201,int_wk1,"pmr01_02_02");




  int_wk1= EEE ;                  
                                  
  ichck("pmr01_02_03",501,int_wk1,"pmr01_02_03");
  }



 {
  int Z[2]={1,2};
  int int_wk1 =0;

#define X         3
#define F(a)      F(X*(a))
#undef  X
#define X         2
#define G         F
#define Z         Z[1]
#define H         G(-
#define M(a)      A(W)
#define W         0,1
#define T(a)      a



  int_wk1=F(1+1) + F(F(Z));       
                                  
                                  
                                  
  ichck("pmr01_03_01",40,int_wk1,"pmr01_03_01");




  int_wk1=T(T(G)(0) + T)(1);      
                                  
                                  
                                  
                                  
  ichck("pmr01_03_02",3,int_wk1,"pmr01_03_02");
#undef  X
#undef  F
#undef  X
#undef  G
#undef  Z
#undef  H
#undef  M
#undef  W
#undef  T
  }



  header("","rereplace,rescan test proc") ;
  }




static int F(int a)
  {
    return a*2 ;
  }




static int T(int a)
  {
    return a*3 ;
  }
