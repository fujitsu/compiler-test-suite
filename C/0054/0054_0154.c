#include<stdio.h>
int func5();
int func4();
int func3();
int func2();
int func1();
 

int main()
{
  printf("01 START\n");
  func1();                           
  func2();                           
  func3();                           
  func4();                           
  func5();                           
  printf("01 END  \n");
}
int func1()
{
  static  char a[21] ={0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0,0,
                          0         };
  char *ap ;
  char t1=0,t2=1;
  ap=a  ;
  *(ap+0-0) = 1 ;               
  *(ap+2-1) = 1 ;               
  *(ap-1+3) = 1 ;               
  *(ap+(1+2)) = 1 ;             
  *(ap+(5-1)) = 1 ;             
  ap=ap+10 ;
  *(ap-(1+4)) = 1 ;             
  *(ap-(5-1)) = 1 ;             
  ap=a+7 ;
  *(ap+t1-t1) = 1 ;             
  *(ap+t2-t1) = 1 ;             
  *(ap-t1+t2+t2) = 1 ;          
  *(ap+(t1+2+t2)) = 1 ;         
  *(ap+(t2*5-t2)) = 1 ;         
  ap=a+11;
  *(ap+(t2*5-4)) = 1 ;          
  ap=a+14;
  *(ap-(t2*2-1)) = 1;           

  *((&a[14])+t1-t1) = 1 ;      
  *((&a[14])+t2-t1) = 1 ;      
  *((&a[14])-t1+t2+t2) = 1 ;   
  *((&a[14])+(t1+2+t2)) = 1 ;  
  *((&a[14])+(t2*5-t2)) = 1 ;  
  *((&a[19])+(t2*5-5)) = 1 ;   
  *((&a[20])-(t2*2-2)) = 1 ;   
  if (*(a+0)!=1 )  printf("FUNC1  NO.0 NG. VALUE=%d\n",*(a+0));
  if (*(a+1)!=1 )  printf("FUNC1  NO.1 NG. VALUE=%d\n",*(a+1));
  if (*(a+2)!=1 )  printf("FUNC1  NO.2 NG. VALUE=%d\n",*(a+2));
  if (*(a+3)!=1 )  printf("FUNC1  NO.3 NG. VALUE=%d\n",*(a+3));
  if (*(a+4)!=1 )  printf("FUNC1  NO.4 NG. VALUE=%d\n",*(a+4));
  if (*(a+5)!=1 )  printf("FUNC1  NO.5 NG. VALUE=%d\n",*(a+5));
  if (*(a+6)!=1 )  printf("FUNC1  NO.6 NG. VALUE=%d\n",*(a+6));
  if (*(a+7)!=1 )  printf("FUNC1  NO.7 NG. VALUE=%d\n",*(a+7));
  if (*(a+8)!=1 )  printf("FUNC1  NO.8 NG. VALUE=%d\n",*(a+8));
  if (*(a+9)!=1 )  printf("FUNC1  NO.9 NG. VALUE=%d\n",*(a+9));
  if (*(a+10)!=1 ) printf("FUNC1  NO.10 NG. VALUE=%d\n",*(a+10));
  if (*(a+11)!=1 ) printf("FUNC1  NO.11 NG. VALUE=%d\n",*(a+11));
  if (*(a+12)!=1 ) printf("FUNC1  NO.12 NG. VALUE=%d\n",*(a+12));
  if (*(a+13)!=1 ) printf("FUNC1  NO.13 NG. VALUE=%d\n",*(a+13));
  if (*(a+14)!=1 ) printf("FUNC1  NO.14 NG. VALUE=%d\n",*(a+14));
  if (*(a+15)!=1 ) printf("FUNC1  NO.15 NG. VALUE=%d\n",*(a+15));
  if (*(a+16)!=1 ) printf("FUNC1  NO.16 NG. VALUE=%d\n",*(a+16));
  if (*(a+17)!=1 ) printf("FUNC1  NO.17 NG. VALUE=%d\n",*(a+17));
  if (*(a+18)!=1 ) printf("FUNC1  NO.18 NG. VALUE=%d\n",*(a+18));
  if (*(a+19)!=1 ) printf("FUNC1  NO.19 NG. VALUE=%d\n",*(a+19));
  if (*(a+20)!=1 ) printf("FUNC1  NO.20 NG. VALUE=%d\n",*(a+20));
}
int func2()
{
  static   signed short int  a[21] ={0,0,0,0,0,
                                        0,0,0,0,0,
                                        0,0,0,0,0,
                                        0,0,0,0,0,
                                        0         };
    signed short int *ap ;
    signed short int  t1=0,t2=1;
  ap=a  ;
  *(ap+0-0) = 1 ;               
  *(ap+2-1) = 1 ;               
  *(ap-1+3) = 1 ;               
  *(ap+(1+2)) = 1 ;             
  *(ap+(5-1)) = 1 ;             
  ap=ap+10 ;
  *(ap-(1+4)) = 1 ;             
  *(ap-(5-1)) = 1 ;             
  ap=a+7 ;
  *(ap+t1-t1) = 1 ;             
  *(ap+t2-t1) = 1 ;             
  *(ap-t1+t2+t2) = 1 ;          
  *(ap+(t1+2+t2)) = 1 ;         
  *(ap+(t2*5-t2)) = 1 ;         
  ap=a+11;
  *(ap+(t2*5-4)) = 1 ;          
  ap=a+14;
  *(ap-(t2*2-1)) = 1;           

  *((&a[14])+t1-t1) = 1 ;      
  *((&a[14])+t2-t1) = 1 ;      
  *((&a[14])-t1+t2+t2) = 1 ;   
  *((&a[14])+(t1+2+t2)) = 1 ;  
  *((&a[14])+(t2*5-t2)) = 1 ;  
  *((&a[19])+(t2*5-5)) = 1 ;   
  *((&a[20])-(t2*2-2)) = 1 ;   
  if (*(a+0)!=1 )  printf("FUNC1  NO.0 NG. VALUE=%d\n",*(a+0));
  if (*(a+1)!=1 )  printf("FUNC2  NO.1 NG. VALUE=%d\n",*(a+1));
  if (*(a+2)!=1 )  printf("FUNC2  NO.2 NG. VALUE=%d\n",*(a+2));
  if (*(a+3)!=1 )  printf("FUNC2  NO.3 NG. VALUE=%d\n",*(a+3));
  if (*(a+4)!=1 )  printf("FUNC2  NO.4 NG. VALUE=%d\n",*(a+4));
  if (*(a+5)!=1 )  printf("FUNC2  NO.5 NG. VALUE=%d\n",*(a+5));
  if (*(a+6)!=1 )  printf("FUNC2  NO.6 NG. VALUE=%d\n",*(a+6));
  if (*(a+7)!=1 )  printf("FUNC2  NO.7 NG. VALUE=%d\n",*(a+7));
  if (*(a+8)!=1 )  printf("FUNC2  NO.8 NG. VALUE=%d\n",*(a+8));
  if (*(a+9)!=1 )  printf("FUNC2  NO.9 NG. VALUE=%d\n",*(a+9));
  if (*(a+10)!=1 ) printf("FUNC2  NO.10 NG. VALUE=%d\n",*(a+10));
  if (*(a+11)!=1 ) printf("FUNC2  NO.11 NG. VALUE=%d\n",*(a+11));
  if (*(a+12)!=1 ) printf("FUNC2  NO.12 NG. VALUE=%d\n",*(a+12));
  if (*(a+13)!=1 ) printf("FUNC2  NO.13 NG. VALUE=%d\n",*(a+13));
  if (*(a+14)!=1 ) printf("FUNC2  NO.14 NG. VALUE=%d\n",*(a+14));
  if (*(a+15)!=1 ) printf("FUNC2  NO.15 NG. VALUE=%d\n",*(a+15));
  if (*(a+16)!=1 ) printf("FUNC2  NO.16 NG. VALUE=%d\n",*(a+16));
  if (*(a+17)!=1 ) printf("FUNC2  NO.17 NG. VALUE=%d\n",*(a+17));
  if (*(a+18)!=1 ) printf("FUNC2  NO.18 NG. VALUE=%d\n",*(a+18));
  if (*(a+19)!=1 ) printf("FUNC2  NO.19 NG. VALUE=%d\n",*(a+19));
  if (*(a+20)!=1 ) printf("FUNC2  NO.20 NG. VALUE=%d\n",*(a+20));
}
int func3()
{
  static unsigned long int  a[21] ={0,0,0,0,0,
                                       0,0,0,0,0,
                                       0,0,0,0,0,
                                       0,0,0,0,0,
                                       0         };
  unsigned long int *ap ;
  unsigned long int  t1=0,t2=1;
  ap=a  ;
  *(ap+0-0) = 1 ;               
  *(ap+2-1) = 1 ;               
  *(ap-1+3) = 1 ;               
  *(ap+(1+2)) = 1 ;             
  *(ap+(5-1)) = 1 ;             
  ap=ap+10 ;
  *(ap-(1+4)) = 1 ;             
  *(ap-(5-1)) = 1 ;             
  ap=a+7 ;
  *(ap+t1-t1) = 1 ;             
  *(ap+t2-t1) = 1 ;             
  *(ap-t1+t2+t2) = 1 ;          
  *(ap+(t1+2+t2)) = 1 ;         
  *(ap+(t2*5-t2)) = 1 ;         
  ap=a+11;
  *(ap+(t2*5-4)) = 1 ;          
  ap=a+14;
  *(ap-(t2*2-1)) = 1;           

  *((&a[14])+t1-t1) = 1 ;      
  *((&a[14])+t2-t1) = 1 ;      
  *((&a[14])-t1+t2+t2) = 1 ;   
  *((&a[14])+(t1+2+t2)) = 1 ;  
  *((&a[14])+(t2*5-t2)) = 1 ;  
  *((&a[19])+(t2*5-5)) = 1 ;   
  *((&a[20])-(t2*2-2)) = 1 ;   
  if (*(a+0)!=1 )  printf("FUNC1  NO.0 NG. VALUE=%d\n",*(a+0));
  if (*(a+1)!=1 )  printf("FUNC3  NO.1 NG. VALUE=%d\n",*(a+1));
  if (*(a+2)!=1 )  printf("FUNC3  NO.2 NG. VALUE=%d\n",*(a+2));
  if (*(a+3)!=1 )  printf("FUNC3  NO.3 NG. VALUE=%d\n",*(a+3));
  if (*(a+4)!=1 )  printf("FUNC3  NO.4 NG. VALUE=%d\n",*(a+4));
  if (*(a+5)!=1 )  printf("FUNC3  NO.5 NG. VALUE=%d\n",*(a+5));
  if (*(a+6)!=1 )  printf("FUNC3  NO.6 NG. VALUE=%d\n",*(a+6));
  if (*(a+7)!=1 )  printf("FUNC3  NO.7 NG. VALUE=%d\n",*(a+7));
  if (*(a+8)!=1 )  printf("FUNC3  NO.8 NG. VALUE=%d\n",*(a+8));
  if (*(a+9)!=1 )  printf("FUNC3  NO.9 NG. VALUE=%d\n",*(a+9));
  if (*(a+10)!=1 ) printf("FUNC3  NO.10 NG. VALUE=%d\n",*(a+10));
  if (*(a+11)!=1 ) printf("FUNC3  NO.11 NG. VALUE=%d\n",*(a+11));
  if (*(a+12)!=1 ) printf("FUNC3  NO.12 NG. VALUE=%d\n",*(a+12));
  if (*(a+13)!=1 ) printf("FUNC3  NO.13 NG. VALUE=%d\n",*(a+13));
  if (*(a+14)!=1 ) printf("FUNC3  NO.14 NG. VALUE=%d\n",*(a+14));
  if (*(a+15)!=1 ) printf("FUNC3  NO.15 NG. VALUE=%d\n",*(a+15));
  if (*(a+16)!=1 ) printf("FUNC3  NO.16 NG. VALUE=%d\n",*(a+16));
  if (*(a+17)!=1 ) printf("FUNC3  NO.17 NG. VALUE=%d\n",*(a+17));
  if (*(a+18)!=1 ) printf("FUNC3  NO.18 NG. VALUE=%d\n",*(a+18));
  if (*(a+19)!=1 ) printf("FUNC3  NO.19 NG. VALUE=%d\n",*(a+19));
  if (*(a+20)!=1 ) printf("FUNC3  NO.20 NG. VALUE=%d\n",*(a+20));
}
int func4()
{
  static struct sttag
  { int a ;       } st[21]=
                     {   0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0,0,
                          0         };
  struct sttag *stp;
  char t1=0,t2=1;
  stp= st ;
 (*(st+0-0)).a = 1 ;               
 (*(st+2-1)).a = 1 ;               
 (*(st-1+3)).a = 1 ;               
 (*(st+(1+2))).a = 1 ;             
 (*(st+(5-1))).a  = 1 ;            
  stp=st+10;
 (*(stp-(1+4))).a = 1 ;             
 (*(stp-(5-1))).a = 1 ;             
  stp=st+7;
 (*(stp+t1-t1)).a = 1 ;             
 (*(stp+t2-t1)).a = 1 ;             
 (*(stp-t1+t2+t2)).a = 1 ;          
 (*(stp+(t1+2+t2))).a = 1 ;         
 (*(stp+(t2*5-t2))).a = 1 ;         
  stp=st+11;
 (*(stp+(t2*5-4))).a = 1 ;          
  stp=st+14;
 (*(stp-(t2*2-1))).a = 1;           

 (*((&st[14])+t1-t1)).a = 1 ;     
 (*((&st[14])+t2-t1)).a = 1 ;     
 (*((&st[14])-t1+t2+t2)).a = 1 ;  
 (*((&st[14])+(t1+2+t2))).a = 1 ; 
 (*((&st[18])+(t1*4-t1))).a = 1 ; 
 (*((&st[19])+(t2*5-5))).a = 1 ;  
 (*((&st[20])-(t2*2-2))).a = 1 ;  

  if ( st[0].a != 1 )
    printf("FUNC4  NO.0 NG  VALUE=%d\n",st[0].a );
  if ( st[1].a != 1 )
    printf("FUNC4  NO.1 NG  VALUE=%d\n",st[1].a );
  if ( st[2].a != 1 )
    printf("FUNC4  NO.2 NG  VALUE=%d\n",st[2].a );
  if ( st[3].a != 1 )
    printf("FUNC4  NO.3 NG  VALUE=%d\n",st[3].a );
  if ( st[4].a != 1 )
    printf("FUNC4  NO.4 NG  VALUE=%d\n",st[4].a );
  if ( st[5].a != 1 )
    printf("FUNC4  NO.5 NG  VALUE=%d\n",st[5].a );
  if ( st[6].a != 1 )
    printf("FUNC4  NO.6 NG  VALUE=%d\n",st[6].a );
  if ( st[7].a != 1 )
    printf("FUNC4  NO.7 NG  VALUE=%d\n",st[7].a );
  if ( st[8].a != 1 )
    printf("FUNC4  NO.8 NG  VALUE=%d\n",st[8].a );
  if ( st[9].a != 1 )
    printf("FUNC4  NO.9 NG  VALUE=%d\n",st[9].a );
  if ( st[10].a != 1 )
    printf("FUNC4  NO.10 NG  VALUE=%d\n",st[10].a );
  if ( st[11].a != 1 )
    printf("FUNC4  NO.11 NG  VALUE=%d\n",st[11].a );
  if ( st[12].a != 1 )
    printf("FUNC4  NO.12 NG  VALUE=%d\n",st[12].a );
  if ( st[13].a != 1 )
    printf("FUNC4  NO.13 NG  VALUE=%d\n",st[13].a );
  if ( st[14].a != 1 )
    printf("FUNC4  NO.14 NG  VALUE=%d\n",st[14].a );
  if ( st[15].a != 1 )
    printf("FUNC4  NO.15 NG  VALUE=%d\n",st[15].a );
  if ( st[16].a != 1 )
    printf("FUNC4  NO.16 NG  VALUE=%d\n",st[16].a );
  if ( st[17].a != 1 )
    printf("FUNC4  NO.17 NG  VALUE=%d\n",st[17].a );
  if ( st[18].a != 1 )
    printf("FUNC4  NO.18 NG  VALUE=%d\n",st[18].a );
  if ( st[19].a != 1 )
    printf("FUNC4  NO.19 NG  VALUE=%d\n",st[19].a );
  if ( st[20].a != 1 )
    printf("FUNC4  NO.20 NG  VALUE=%d\n",st[20].a );
}
int func5()
{
  static union untag
  { int a ;       } un[21];
  union untag *unp;
  char t1=0,t2=1;
  un[0].a=0;  un[1].a=0;  un[2].a=0;  un[3].a=0  ; un[4].a=0;
  un[5].a=0;  un[6].a=0;  un[7].a=0;  un[8].a=0  ; un[9].a=0;
  un[10].a=0; un[11].a=0; un[12].a=0; un[13].a=0 ; un[14].a=0;
  un[15].a=0; un[16].a=0; un[17].a=0; un[18].a=0 ; un[19].a=0;
  un[20].a=0;

  unp= un ;
 (*(un+0-0)).a = 1 ;               
 (*(un+2-1)).a = 1 ;               
 (*(un-1+3)).a = 1 ;               
 (*(un+(1+2))).a = 1 ;             
 (*(un+(5-1))).a  = 1 ;            
  unp=un+10;
 (*(unp-(1+4))).a = 1 ;             
 (*(unp-(5-1))).a = 1 ;             
  unp=un+7;
 (*(unp+t1-t1)).a = 1 ;             
 (*(unp+t2-t1)).a = 1 ;             
 (*(unp-t1+t2+t2)).a = 1 ;          
 (*(unp+(t1+2+t2))).a = 1 ;         
 (*(unp+(t2*5-t2))).a = 1 ;         
  unp=un+11;
 (*(unp+(t2*5-4))).a = 1 ;          
  unp=un+14;
 (*(unp-(t2*2-1))).a = 1;           

 (*((&un[14])+t1-t1)).a = 1 ;     
 (*((&un[14])+t2-t1)).a = 1 ;     
 (*((&un[14])-t1+t2+t2)).a = 1 ;  
 (*((&un[14])+(t1+2+t2))).a = 1 ; 
 (*((&un[18])+(t1*4-t1))).a = 1 ; 
 (*((&un[19])+(t2*5-5))).a = 1 ;  
 (*((&un[20])-(t2*2-2))).a = 1 ;  

  if ( un[0].a != 1 )
    printf("FUNC5  NO.0 NG  VALUE=%d\n",un[0].a );
  if ( un[1].a != 1 )
    printf("FUNC5  NO.1 NG  VALUE=%d\n",un[1].a );
  if ( un[2].a != 1 )
    printf("FUNC5  NO.2 NG  VALUE=%d\n",un[2].a );
  if ( un[3].a != 1 )
    printf("FUNC5  NO.3 NG  VALUE=%d\n",un[3].a );
  if ( un[4].a != 1 )
    printf("FUNC5  NO.4 NG  VALUE=%d\n",un[4].a );
  if ( un[5].a != 1 )
    printf("FUNC5  NO.5 NG  VALUE=%d\n",un[5].a );
  if ( un[6].a != 1 )
    printf("FUNC5  NO.6 NG  VALUE=%d\n",un[6].a );
  if ( un[7].a != 1 )
    printf("FUNC5  NO.7 NG  VALUE=%d\n",un[7].a );
  if ( un[8].a != 1 )
    printf("FUNC5  NO.8 NG  VALUE=%d\n",un[8].a );
  if ( un[9].a != 1 )
    printf("FUNC5  NO.9 NG  VALUE=%d\n",un[9].a );
  if ( un[10].a != 1 )
    printf("FUNC5  NO.10 NG  VALUE=%d\n",un[10].a );
  if ( un[11].a != 1 )
    printf("FUNC5  NO.11 NG  VALUE=%d\n",un[11].a );
  if ( un[12].a != 1 )
    printf("FUNC5  NO.12 NG  VALUE=%d\n",un[12].a );
  if ( un[13].a != 1 )
    printf("FUNC5  NO.13 NG  VALUE=%d\n",un[13].a );
  if ( un[14].a != 1 )
    printf("FUNC5  NO.14 NG  VALUE=%d\n",un[14].a );
  if ( un[15].a != 1 )
    printf("FUNC5  NO.15 NG  VALUE=%d\n",un[15].a );
  if ( un[16].a != 1 )
    printf("FUNC5  NO.16 NG  VALUE=%d\n",un[16].a );
  if ( un[17].a != 1 )
    printf("FUNC5  NO.17 NG  VALUE=%d\n",un[17].a );
  if ( un[18].a != 1 )
    printf("FUNC5  NO.18 NG  VALUE=%d\n",un[18].a );
  if ( un[19].a != 1 )
    printf("FUNC5  NO.19 NG  VALUE=%d\n",un[19].a );
  if ( un[20].a != 1 )
    printf("FUNC5  NO.20 NG  VALUE=%d\n",un[20].a );
}
