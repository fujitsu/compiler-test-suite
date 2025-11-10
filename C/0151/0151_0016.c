
















  #include "001.h"








  int func2(void)
  {
      return 0 ;
  }




int main()
  {

  header("","ARRAY EXPRESION TEST") ;




  {
      int judge = 0 ;
      signed char fea01[10]="fea0123ab" ;
      char ccnt = 0 ;
      if (fea01[2]             =='a') judge++ ; 
      if (fea01[(2)]           =='a') judge++ ; 
      if (fea01[(ccnt+judge+2)]=='1') judge++ ; 
      while(fea01[ccnt]) {
         judge++ ; ccnt++ ;
      }
      ichck("FEA01.01",12,judge,"one expresion test") ;
  }



 {
#if defined(msp)|defined(uxp)
    int judge = 0 ;
    long long int lli2 = 0LL ;
    struct tag21{long long int strlli ;}  str1={0LL};
    union  tag22{long long int utrlli ;} *uni1={0LL};
    struct tag23{
                 char cc2 ;
                 int  ii2 ;
    } str2[2][2][3]={{'A',1,'B',2,'C',3,'D',4,'E',5,'F',6},
                     {'G',7,'H',8,'I',9,'J',10,'K',11,'L',12}};
                                  
    if (str2[lli2][0][lli2].cc2                    =='A') judge++ ;
                                  
    if (str2[0+lli2+lli2][lli2][str1.strlli--].cc2 =='A') judge++ ;
    lli2=1 ;                      
                                  
    if (str2[uni1->utrlli++][lli2--][lli2].cc2     =='D') judge++ ;
                                  
    if (str2[0+0+0+0+0+0][lli2++][func2()].cc2=='A') judge++ ;
    ichck("FEA01.02",4,judge,"one expresion test") ;
#endif
  }



   {
#if defined(msp)|defined(uxp)
    int judge = 0,i1,i2,i3 ;
    long long int right=101LL;
    int *ptr3 ;
    short int si3 = 0xfffe ;
    float fl3 = 1.0f ;
    float *fptr3 ;
    double dbl3 = 0.2e+1 ;
    enum teg3 {e0,e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11}earea3;
    long long int fea03[2][2][3]={{1,2,3,4,5,6},{7,8,9,10,11,12}};

    ptr3=&i1 ;
    i1 = e0 ;
                                  
    fea03[e0-(+e0)][e0][*ptr3]=101LL ;
                                  
    fea03[(*ptr3)-e1][*(ptr3)-e1][++earea3]=102LL ;
    earea3 = e11 ;
                                  
    fea03[+e0][earea3-e11][sizeof(short int)]=103LL ;
                                  
    earea3 = 2 ;
    fea03[!e11][--earea3][e0]=104LL ;
                                  
    earea3 = 2 ;
    fptr3 = &fl3 ;
    fea03[(int)*fptr3-1][--*ptr3][*ptr3]=105LL ;
                                  
    fea03[&earea3-&earea3][??-si3][sizeof(si3)]=106LL ;
                                  
    fea03[sizeof(short)-e1][(int)*fptr3-(int)*fptr3]
                                      [(int)*fptr3-1]=107LL ;

    fl3=1.0f ;
                                  
    earea3=0 ;
    fea03[+e1][!e1][++(*ptr3)]=108LL ;
                                  
    fea03[-e1+(e2)][e0][e11-e9]=109LL ;
                                  
    fl3=1.0f ;
    fea03[(int)fl3][e5-e4][+(+e0)]=110LL ;
                                  
    fea03[!e0][sizeof(fl3)-sizeof(short int)-(int)*fptr3]
                             [(int)dbl3-(int)fl3]=111LL ;
                                  
    earea3 = 0 ;
    fea03[++earea3][sizeof(char)]
                   [sizeof(float)-sizeof(short)+e0]=112LL ;
    for (i1=0;i1<2;i1++) {
      for (i2=0;i2<2;i2++) {
        for (i3=0;i3<3;i3++) {
          if (fea03[i1][i2][i3]==right) judge++ ;
          right++ ;
        }
      }
    }
    ichck("FEA01.03",12,judge,"enum expresion test") ;
#endif
  }



   {
#if defined(msp)|defined(uxp)
      int judge = 0 ;
      long long int fea04[2][2][2][2][2][2][2][2][2][2] ;
      struct tag4 {
                   char        cc4;
                   short       si4;
                   int         ii4;
                   long int    li4;
                   long long   ll4;
                   float       fl4;
                   double      dbl4;
                   long double ld4;
                   } sarea4 ;
                                  
      sarea4.cc4=0;
      sarea4.si4=0;
      sarea4.ii4=0;
      sarea4.li4=0;
      sarea4.ll4=0;
      sarea4.fl4=0.0f;
      sarea4.dbl4=0.0;
      sarea4.ld4=0.0L;
      fea04[(int)sarea4.cc4]
           [(int)sarea4.si4]
           [(int)sarea4.ii4]
           [(int)sarea4.li4]
           [(int)sarea4.fl4]
           [(int)sarea4.dbl4]
           [(int)sarea4.dbl4]
           [(int)sarea4.ld4]
           [(int)sarea4.ll4]
           [0]=111;
      if (fea04[0][0][0][0][0][0][0][0][0][0]==111) judge++ ;
                                  
      sarea4.cc4=1;
      sarea4.si4=1;
      sarea4.ii4=1;
      sarea4.li4=1;
      sarea4.ll4=1;
      sarea4.fl4=1.0f;
      sarea4.dbl4=1.0;
      sarea4.ld4=1.0L;
      fea04[(short)sarea4.cc4]
           [(char)sarea4.si4]
           [(long int)sarea4.ii4]
           [(int)sarea4.li4]
           [(short)sarea4.fl4]
           [(char)sarea4.dbl4]
           [(short int)sarea4.dbl4]
           [(long long)sarea4.ld4]
           [(int)sarea4.ll4]
           [1]=222;
      if (fea04[1][1][1][1][1][1][1][1][1][1]==222) judge++ ;
      ichck("FEA01.04",2,judge,"cast expresion test") ;
#endif
   }



   {
      int judge = 0 ;
      short int fea05[30][20] ;
      short int si5;
      char  *cptr ;
      float     fl5;
      char i11,i12,i21,i22 ;

      i11=1 ;i12=1 ;i21=1 ;i22=1 ;
                                     
      fea05[i11*i12*i11*i12*i11*i12*i11*i12*i11*i12*i11*i12*
i11*i12*i11*i12*i11*i12*i11*i12*i11*i12*i11*i12*i11*i12*i11*
i12*i11*i12*i11]
      [i21*i22*i21*i22*i21*i22*i21*i22*i21*i22*i21*i22*
i21*i22*i21*i22*i21*i22*i21*i22*i21*i22*i21*i22*i21*i22*i21*
i22*i21*i22*i21]=111 ;

      i11=50 ;i12=10 ;i21=10 ;i22=10 ;
      fea05[i11/i12][i21/i22]=111 ;       
      i11=18 ;fl5=9.0f ;
      fea05[i11/2][(char)fl5*10/9]=111 ;  
      cptr = &i11 ;
      i11 = 20;
      fea05[*cptr/2][1**cptr/2]=111 ;     
      i11=2 ;i12=10 ;i21=1 ;i22=10 ;
      fea05[i11*i12][i21*i22]=111 ;       
      i11=3 ;i12=2 ;i21=2 ;i22=2 ;
      fea05[i11*i12*i21*i22][10]=111 ;    
      i11=5 ;fl5=5.0f ;
      fea05[sizeof(fl5)*i11+(char)fl5]
      [sizeof(fl5)/sizeof(si5)]=111 ;     

      if (fea05[1][1]   ==111) judge++ ;
      if (fea05[5][1]   ==111) judge++ ;
      if (fea05[9][10]  ==111) judge++ ;
      if (fea05[10][10] ==111) judge++ ;
      if (fea05[20][10] ==111) judge++ ;
      if (fea05[24][10] ==111) judge++ ;
      if (fea05[25][2]  ==111) judge++ ;
      ichck("FEA01.05",7,judge,"multple/divode expresion test") ;
   }

  header("","ARRAY EXPRESION TEST") ;
  }
