int func1 (void);
int sub1 (int i_dum, int *i1, int *j1);
int m3grtn01 (void);
int m3grel01 (void);
int m3mpcm03 (void);
int m3mpsi02 (void);
int scrna08 (void);
int m3gptr01 (void);
int mptest10 (void);
int m3mpjp01 (void);
int chk (void);
int 
main (void)  {

   void scrsk17();

   mptest10();    
   m3mpjp01();    
   m3gptr01();    
   scrna08();     
   scrsk17();     
   m3mpsi02();    
   m3mpcm03();    
   m3grel01();    
   m3grtn01();    

}


#include <stdio.h>
#include <string.h>

#define TESTOK " *** CHECK OK ***\n"
#define TESTNG " *** CHECK NG ***\n"

  static int rdata[ ] ={2,3,5,7,11,13,17,19,23,29,31,37,41,43,
                           47,53,59,61,67,71,73,79,83,89,97};

  struct ss {
       int  ssd;
       char atr[4];
       struct ss *nxt;
  } ss0[100];

 int chk1(struct ss *,int *,int);
 int chk2(struct ss *,int *,int);
 int chain(struct ss *);
 int ckchain(struct ss *);

 int 
mptest10 (void)
 {
    int data ;
    int i,mm,rtncd;
    char  str[3];

    printf("\n***** MPTEST10 START *****\n");
    for( i=0 ; i<100 ; i++){
       ss0[i].ssd=i+1;
       ss0[i].atr[0]='o';
       ss0[i].atr[1]='n';
       ss0[i].atr[2]='\0';
    }
    ss0[0].atr[1]='f';
    ss0[0].atr[2]='f';
    ss0[0].atr[3]='\0';

    for(data=1 ; data <= 100 ; data++ ){
       for( i=2 ; i<=data ; i++){
          mm = data%i;
          if(mm==0){
             if(i!=data){
                ss0[data-1].atr[1]='f';
                ss0[data-1].atr[2]='f';
                ss0[data-1].atr[3]='\0';
                break;
             }
          }
       }
    }

    for(i=0;i<100;i++){
       printf("(%2d) d=%3d, atr=%3s",i,ss0[i].ssd,ss0[i].atr);
       (i+1)%3==0 ? printf("\n") : printf("  ");
    }
    printf("\n");

    switch(rtncd=chain(ss0)){
      case 0:
        printf("  **  CHAIN OK **\n");
        break;
      case 1:
        printf("  **  CHAIN NG  CODE = %d **\n",rtncd);
        goto label1 ;
      case 2:
        printf("  **  CHAIN NG  CODE = %d **\n",rtncd);
        goto label1 ;
    }

    rtncd = chk();
 label1:
    if(rtncd==0){
       printf(TESTOK);
       strcpy(str,"OK");
    }else{
       printf(TESTNG);
       strcpy(str,"NG");
    }
    printf("***** MPTEST10 %s END *****\n",str);
 }

 int 
chk (void)
 {
    struct ss *sp;
    int i,jg;

    sp=ss0;
    for(i=0;i<100;i++){
       if(!strcmp(sp->atr,"on"))
          jg=chk1(sp,rdata,sizeof(rdata)/sizeof(rdata[0]));
       else
          jg=chk2(sp,rdata,sizeof(rdata)/sizeof(rdata[0]));
       if(jg!=0)
          return(-1);
    }
    return(0);
 }

 int 
chk1 (struct ss *sp, int *data, int size)
 {
    int i;

    for(i=0;i<size;i++){
       if(sp->ssd == *data++)
          return(0);
    }
    printf("     in chk1  NG  number=%d\n",sp->ssd);
    return(-1);
 }

 int 
chk2 (struct ss *sp, int *data, int sz)
 {
    int i;

    for(i=0;i<sz;i++){
       if(sp->ssd == *data++){
          printf("     in chk2  NG  number=%d\n",sp->ssd);
          return(-1);
       }
    }
    return(0);
 }

 int 
chain (struct ss *ssp)
 {
    struct ss *wssp,*bssp,*pssp;
    int i;

    for(i=0,wssp=ssp ; i<100 ; i++){
      if(wssp->atr[1]=='n'){
         pssp=bssp=wssp;
         break;
      }
      wssp++;
    }

    for( ; i<99 ; i++){
      if(wssp->atr[1]=='n'){
         bssp->nxt=wssp;
         bssp=wssp;
      }
      wssp++;
    }
    return(ckchain(pssp));
 }

 int 
ckchain (struct ss *ssp)
 {
    int i;
    struct ss *wssp;

     for(wssp=ssp,i=0;i<100;i++){
       if(wssp->ssd != rdata[i]){
         return(1);
       } else {
         wssp= wssp->nxt;
         if(wssp==NULL && i==sizeof(rdata)/sizeof(rdata[0])-1) return(0);
       }
     }
     return(2);
 }


#include  <setjmp.h>
 int xxfnc40 (void);
 int xxfnc30 (void);
 int xxfnc20 (void);
 int xxfnc10 (void);
 int func5 (void);
 int func4 (void);
 int func3 (void);
 int func2 (void);
 jmp_buf  env_area;
 int      int1,int2,err_cnt,i,j,k;
 int      int_ar1[10] = {0,1,2,3,4,5,6,7,8,9};
 int      int_ar2[10];                            
 int      int_ans[10] = {0,1,2,3,4,8,6,7,8,9};  

 int 
m3mpjp01 (void)
 {
   printf("m3mpjp01 start\n");
   for (i=0,j=0;j<10;i++,j++)
   {
     int1=int_ar1[i];
     int2=setjmp(env_area);
     int_ar2[j]=int_ar1[i];
     if (int2 == 1)
     {
       goto l1;
     }
   }
   sub1(int1,&i,&j);
 l1:;
   err_cnt=0;
   for (k=0;k<10;k++)
   {
     if (int_ar2[k] != int_ans[k])
     {
       printf("***ng*** int_ar2(%d)=%d, right_value=%d\n",
              k,int_ar2[k],int_ans[k]);
       err_cnt++;
     }
   }
   if (err_cnt == 0)
   {
     printf("**** ok ****\n");
   }
   printf("m3mpjp01 end\n");
 }

 int 
sub1 (int i_dum, int *i1, int *j1)
 {
   *i1=8;
   *j1=5;
   longjmp(env_area,1);
 }


int 
m3gptr01 (void)
{
  printf("M3GPTR01 START\n");
  func1();                           
  func2();                           
  func3();                           
  func4();                           
  func5();                           
  printf("M3GPTR01 END  \n");
}
int 
func1 (void)
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
int 
func2 (void)
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
int 
func3 (void)
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
int 
func4 (void)
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
int 
func5 (void)
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


int 
scrna08 (void)
{
    printf(" all bit test ok");
}


#define l 0
#define h 1

struct _nd2 {
  char y,y__;
};

struct _rsff {
  char q,q__;
  char q_,q___;
  struct _nd2 g1;
  struct _nd2 g2;
};

struct _rsff rsff_d;
int now;

void scrsk17();
void rsff_f();
int rsff_c();
void nd2_f();
int  nd2_c();

int 
_scanf (char *p, char *a, char *b)
{
   static int count=0;
   static struct tag {
     int i;
     int j;
   } data[] = {  { 0,0 },
                     { 0,1 },
                     { 1,0 },
                     { 1,1 },
                     { -1,0 } };
   if( data[count].i == -1 ) {
     return (EOF);
   }
   *a = data[count].i;
   *b = data[count].j;
   count++;
   return !EOF;
}
void 
scrsk17 (void)
{
   char s_, r_;
   now = 0;
   while( _scanf("%d %d2",&s_,&r_) != EOF ) {
     rsff_f(&rsff_d,s_,r_);
{
   static int ans[] = {
       0,  0,  1,  1,
       0,  1,  1,  0,
       1,  0,  0,  1,
       1,  1,  0,  1
   };
   static int c=0;
   if( s_ != ans[c++] ) puts(" NG ");
   if( r_ != ans[c++] ) puts(" NG ");
   if( rsff_d.q != ans[c++] ) puts(" NG ");
   if( rsff_d.q_ != ans[c++] ) puts(" NG ");
}
     now++;
   }
   puts("\nSCRSK17 OK");
}

void 
rsff_f (struct _rsff *_p, int s_, int r_)
{
  if( ! now ) {
    _p -> q__ = h;
    _p -> q___ = h;
  }
  do {
    nd2_f(&_p -> g1, s_, *(char *)&_p -> g2 );
    nd2_f(&_p -> g2, r_, *(char *)&_p -> g1 );
    _p -> q = *(char *)&_p -> g1;
    _p -> q_ = *(char *)&_p -> g2;
  } while( rsff_c ( _p, _p -> q, _p -> q_ ));
}

int 
rsff_c (struct _rsff *_p, int q, int q_)
{
  int __f = 0;
  if( _p -> q__ != q ) {
    _p -> q__ = q; __f = 1;
  }
  if( _p -> q___ != q_ ) {
    _p -> q___ = q_; __f = 1;
  }
  return (__f);
}

void 
nd2_f (struct _nd2 *_p, int a, int b)
{
  if( !now ) {
    _p -> y__ = h;
  }
  do {
    _p -> y = ~(a & b) & 1;
  } while( nd2_c (_p,_p->y));
}

int 
nd2_c (struct _nd2 *_p, int y)
{
  int __f = 0;
  if( _p -> y__ != y ) {
    _p -> y__ = y;
    __f  = 1;
  }
  return (__f);
}


int 
m3mpsi02 (void) {
struct tag {
    int    mema;
    int    memb;
    char   memc[4];
    } var;
struct tag var2,*pint;
int a[10];
int x;
var.mema=5;
a[4]=5;
a[var.mema]=3;
pint=&var;
var.memb=4;
x=pint->memb;
a[1]=x;
pint->memc[1]=x;
if (pint->memc[1]==4) printf("m3mprd03 ok\n");
else
printf("m3mprd03 ng\n");
}


 int   outi1,outi2;
 int 
m3mpcm03 (void)
 {
   int *pi;
   int ai,bi,ei,fi;
   ai=10;
   bi=20;
   ei=50;
   fi=60;
   pi=&ai;
   fi=*pi;
   if(bi==20) {
    *pi=15;
   }
   ei=*pi;
   if(ei==fi)
   {
     printf("error of a-2 : ei = %d\n",ei);
   }
   else
   {
     if(ei!=15)
     {
       printf("error of a-2 : ei = %d\n",ei);
     }
     else
     {
       printf("ok of a-2\n");
     }
   }
   ai=10;

   pi=&ai;
   fi=ai+bi;
   if(bi==20) {
     *pi=15;
   }
   ei=ai+bi;
   if(ei==fi)
   {
     printf("error of c-2 : ei = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("error of c-2 : ei = %d\n",ei);
     }
     else
     {
       printf("ok of c-2\n");
     }
   }
   ai=10;

   pi=&ai;
   fi=bi+(*pi);
   if(bi==20) {
     ai=15;
   }
   ei=bi+(*pi);
   if(ei==fi)
   {
     printf("error of b-2:ei = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("error of b-2:ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-2\n");
     }
   }
   ai=10;
 }


int 
m3grel01 (void)
{
  printf("M3GREL01 START\n");
  xxfnc10();
  xxfnc20();
  xxfnc30();
  xxfnc40();
  printf("M3GREL01 END  \n");
}
int 
xxfnc10 (void){
  float fa=1.0,fb=2.0;
  int xxa=0;
  xxa =(fa<fb)+(0.0<fa)+(fa<3.0);
  if (xxa==3)
    printf("M3GREL01 XXFNC1 OK\n");
  else {
    printf("M3GREL01 XXFNC1 NG\n");
    printf("XXA=%d\n",xxa);
  }
}
int 
xxfnc20 (void){
  volatile int a[3] ,*ap1,*ap2;
           int b[3] ,*bp1,*bp2;
  int x=0;
  ap1=a;
  ap2=a+1;
  bp1=b;
  bp2=b+1;

  x =(ap1<ap2)+(bp1<bp2);
  if (x==2)
    printf("M3GREL01 XXFNC2 OK\n");
  else {
    printf("M3GREL01 XXFNC2 NG\n");
    printf("X=%d\n",x);
  }
}
volatile int a[2];
int 
xxfnc30 (void){
  volatile int *ap1,*ap2;
  int x=0;
  ap1=a;
  ap2=a+1;
  {
    extern volatile int a[2];
  }
  x =(ap1<ap2);
  if (x==1)
    printf("M3GREL01 XXFNC3 OK\n");
  else {
    printf("M3GREL01 XXFNC3 NG\n");
    printf("X=%d\n",x);
  }
}
int b[2];
int 
xxfnc40 (void){
  int *ap1,*ap2;
  int x=0;
  ap1=b;
  ap2=b+1;
  {
    extern int b[2];
  }
  x =(ap1<ap2);
  if (x==1)
    printf("M3GREL01 XXFNC4 OK\n");
  else {
    printf("M3GREL01 XXFNC4 NG\n");
    printf("X=%d\n",x);
  }
}


int 
m3grtn01 (void)  {
     int  a1,a2,a3,a4,b1,b2,b3,b4;
     int  c1,c2,c3,c4,d1,d2,d3,d4;

              char   f1(),f2(),f3(),f4();
     unsigned char   f5(),f6(),f7(),f8();
              short  f9(),f10(),f11(),f12();
     unsigned short  f13(),f14(),f15(),f16();

  printf("M3GRTN01 TEST-START \n");

     a1=f1();
     if(a1==1)
        printf("M3GRTN01 1-1 TEST -O  K- \n");
     else
        printf("M3GRTN01 1-1 TEST - NG - \n");

     a2=f2();
     if(a2==2)
        printf("M3GRTN01 1-2 TEST -O  K- \n");
     else
        printf("M3GRTN01 1-2 TEST - NG - \n");

     a3=f3();
     if(a3==3)
        printf("M3GRTN01 1-3 TEST -O  K- \n");
     else
        printf("M3GRTN01 1-3 TEST - NG - \n");

     a4=f4();
     if(a4==4)
        printf("M3GRTN01 1-4 TEST -O  K- \n");
     else
        printf("M3GRTN01 1-4 TEST - NG - \n");

     b1=f5();
     if(b1==1)
        printf("M3GRTN01 2-1 TEST -O  K- \n");
     else
        printf("M3GRTN01 2-1 TEST - NG - \n");

     b2=f6();
     if(b2==2)
        printf("M3GRTN01 2-2 TEST -O  K- \n");
     else
        printf("M3GRTN01 2-2 TEST - NG - \n");

     b3=f7();
     if(b3==3)
        printf("M3GRTN01 2-3 TEST -O  K- \n");
     else
        printf("M3GRTN01 2-3 TEST - NG - \n");

     b4=f8();
     if(b4==4)
        printf("M3GRTN01 2-4 TEST -O  K- \n");
     else
        printf("M3GRTN01 2-4 TEST - NG - \n");

     c1=f9();
     if(c1==1)
        printf("M3GRTN01 3-1 TEST -O  K- \n");
     else
        printf("M3GRTN01 3-1 TEST - NG - \n");

     c2=f10();
     if(c2==2)
        printf("M3GRTN01 3-2 TEST -O  K- \n");
     else
        printf("M3GRTN01 3-2 TEST - NG - \n");

     c3=f11();
     if(c3==3)
        printf("M3GRTN01 3-3 TEST -O  K- \n");
     else
        printf("M3GRTN01 3-3 TEST - NG - \n");

     c4=f12();
     if(c4==4)
        printf("M3GRTN01 3-4 TEST -O  K- \n");
     else
        printf("M3GRTN01 3-4 TEST - NG - \n");

     d1=f13();
     if(d1==1)
        printf("M3GRTN01 4-1 TEST -O  K- \n");
     else
        printf("M3GRTN01 4-1 TEST - NG - \n");

     d2=f14();
     if(d2==2)
        printf("M3GRTN01 4-2 TEST -O  K- \n");
     else
        printf("M3GRTN01 4-2 TEST - NG - \n");

     d3=f15();
     if(d3==3)
        printf("M3GRTN01 4-3 TEST -O  K- \n");
     else
        printf("M3GRTN01 4-3 TEST - NG - \n");

     d4=f16();
     if(d4==4)
        printf("M3GRTN01 4-4 TEST -O  K- \n");
     else
        printf("M3GRTN01 4-4 TEST - NG - \n");

  printf("M3GRTN01 TEST-END \n");
}

  char 
f1 (void)  {
        return((char)1);
  }

  char 
f2 (void)  {
        return((unsigned char)2);
  }

  char 
f3 (void)  {
        return((short)3);
  }

  char 
f4 (void)  {
        return((unsigned short)4);
  }

  unsigned char 
f5 (void)  {
        return((char)1);
  }

  unsigned char 
f6 (void)  {
        return((unsigned char)2);
  }

  unsigned char 
f7 (void)  {
        return((short)3);
  }

  unsigned char 
f8 (void)  {
        return((unsigned short)4);
  }

  short 
f9 (void)  {
        return((char)1);
  }

  short 
f10 (void)  {
        return((unsigned char)2);
  }

  short 
f11 (void)  {
        return((short)3);
  }

  short 
f12 (void)  {
        return((unsigned short)4);
  }

  unsigned short 
f13 (void)  {
        return((char)1);
  }

  unsigned short 
f14 (void)  {
        return((unsigned char)2);
  }

  unsigned short 
f15 (void)  {
        return((short)3);
  }

  unsigned short 
f16 (void)  {
        return((unsigned short)4);
  }
