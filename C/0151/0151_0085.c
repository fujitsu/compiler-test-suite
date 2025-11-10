

  #include "001.h"


int main()
  {
  header("","COMMENT TEST") ;

  {
  int int_wk1 ,judge= 0 ;
  int_wk1 = 100 ;
  for(;int_wk1>0;int_wk1--) {
  judge ++  ;
  } ;
  ichck("TKO03.01",100,judge,"comment right stmt") ;
  }

  {
  int int_wk1 ,judge=0;
  int_wk1 = 100 ;
  for(;int_wk1>0;int_wk1--) {
    judge ++  ;
  } ;
  ichck("TKO03.03",100,judge,"comment right stmt test") ;
  }

  {
  int int_wk1,judge=0,int_wk2 ;
  int_wk1 = 32767 ;            
  int_wk2 = -32768 ;           
  if (int_wk1==32767)       judge++ ;
  if (int_wk2==-32768)      judge++ ;
  if (int_wk1+int_wk2==-1)  judge++ ;
  ichck("TKO03.03",3,judge,"comment right stmt test") ;
  }

  {
   int int_wk1,judge=0,int_wk2 ;
   int_wk1 = 11111;
   int_wk2 = -11111 ;
   if (int_wk1==11111)  judge++ ;
   if (int_wk2==-11111) judge++ ;
   if (int_wk1+int_wk2==0)  judge++ ;
   ichck("TKO03.04",3,judge,"comment left stmt test") ;
  }

  {
   int int_wk1,judge=0,int_wk2 ;
   int_wk1 = 11111;
   int_wk2 = -11111 ;
   if (int_wk1==11111)  judge++ ;
   if (int_wk2==-11111) judge++ ;
   if (int_wk1+int_wk2==0)  judge++ ;
   ichck("TKO03.05",3,judge,"comment left stmt test") ;
  }

  {
   int int_wk1,judge=0,int_wk2 ;
   int_wk1 = 10000;
   int_wk2 = -10000 ;
   if (int_wk1==10000)  judge++ ;
   if (int_wk2==-10000) judge++ ;
   if (int_wk1+int_wk2==0)  judge++ ;
   ichck("TKO03.06",3,judge,"comment left stmt test") ;
  }

  {
  int judge=0,int_wk1,int_cnt,jjjjj;
  int_wk1                   = 2 ;
  jjjjj   =    0 ;
  for (int_cnt=0 ;int_cnt<10;int_cnt++) {
     jjjjj++ ;
     int_wk1*=2 ;
  }
  if (jjjjj==10) judge++ ;
  if (int_wk1==2048) judge++ ;
  ichck("TKO03.07",2,judge,"comment in expression test") ;
  }

  {
  int judge=0,int_wk1,int_cnt,jjjjj;
  int_wk1= 2 ;
  jjjjj   =     0 ;
  for (int_cnt=0 ;int_cnt<10;int_cnt++) {
     jjjjj++ ;
     int_wk1*=2 ;
  }
  if (jjjjj==10) judge++ ;
  if (int_wk1==2048) judge++ ;
  ichck("TKO03.08",2,judge,"comment in expression test") ;
  }

  {
  int judge=0,int_wk1,int_cnt,jjjjj;
  int_wk1= 2 ;
  jjjjj  =     0 ;
  for (int_cnt=0 ;int_cnt<10;
                         int_cnt++) {
     jjjjj++ ;
     int_wk1 *=2 ;
  }
  if (jjjjj==10) judge++ ;
  if (int_wk1==2048) judge++ ;
  ichck("TKO03.09",2,judge,"comment in expression \\? test") ;
  }

  {
  int judge=0,int_wk1,int_cnt,jjjjj;
  int_wk1 = 2 ;
  jjjjj = 0 ;
  for (int_cnt=0 ;int_cnt<10 ;int_cnt++) { 
     jjjjj++ ;
     int_wk1*=2 ;
  }
  if (jjjjj==10) judge++ ;
  if (int_wk1==2048) judge++ ;
  ichck("TKO03.10",2,judge,"comment in expression \\? test") ;
  }

  {
  int judge=0,int_wk1,int_cnt,jjjjj;
  int_wk1 = 2 ;
  jjjjj = 0 ;
  for (int_cnt=0 ;int_cnt<10 ;int_cnt++) {
  jjjjj++ ;
     int_wk1*=2 ;
  }
  if (jjjjj==10) judge++ ;
  if (int_wk1==2048) judge++ ;
 ichck("TKO03.11",2,judge,"comment in expression \\? test") ;
  }

  header("","COMMENT TEST") ;
  }
