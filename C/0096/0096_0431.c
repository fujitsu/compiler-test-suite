#include <string.h>
#include  <stdio.h>

#include <stdio.h>

#define TESTOK " *** CHECK OK ***\n"
#define TESTNG " *** CHECK NG ***\n"

  static int rdata[ ] ={2,3,5,7,11,13,17,19,23,29,31,37,41,43,
                           47,53,59,61,67,71,73,79,83,89,97};

  struct ss {
       int  ssd;
       char atr[4];
       struct ss *nxt;
  } ss0[100];
int chk (void);
#ifdef __STDC__
 int chk1(struct ss *,int *,int);
 int chk2(struct ss *,int *,int);
 int chain(struct ss *);
 int ckchain(struct ss *);
#else
 int chk1();
 int chk2();
 int chain();
 int ckchain();
#endif
int 
main (void)
 {
    int data ;
    int i,mm,rtncd;
    char  str[3];

    printf("\n*****  START *****\n");
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
    printf("*****  %s END *****\n",str);
 }

 int 
chk (void)
 {
    struct ss *sp;
    int i,jg;

    sp=ss0;
    for(i=0;i<100;i++){
       if(!strcmp(sp->atr,"on"))
          jg=chk1(sp,rdata,sizeof(rdata)/4);
       else
          jg=chk2(sp,rdata,sizeof(rdata)/4);
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
         pssp=bssp=wssp++;
	 i++;
         break;
      }
      wssp++;
    }

    for( ; i<100 ; i++){
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
#if INT64
         if(wssp==NULL && i==sizeof(rdata)/8-1) return(0);
#else
         if(wssp==NULL && i==sizeof(rdata)/4-1) return(0);
#endif
       }
     }
     return(2);
 }
