
















  #include "001.h"





int main()
  {

  header("","ARRAY EXPRESION TEST") ;




   {
      int judge = 0 ;
      int fea06[18][13] ;
      short int si6;
      short *siptr;
      float     fl6;
      short int si11,si12,si21,si22 ;

      si11=1 ;si12=1 ;si21=1 ;si22=1 ;
                                     
      fea06[si11-si12+si11-si12+si11-si12+si11-si12+si11-si12+si11-
si12+si11-si12+si11-si12+si11-si12+si11-si12+si11-si12+si11-si12+
si11-si12+si11-si12+si11-si12+si11]
      [si21-si22+si21-si22+si21-si22+si21-si22+si21-si22+si21-si22+
si21-si22+si21-si22+si21-si22+si21-si22+si21-si22+si21-si22+si21-
si22+si21-si22+si21-si22+si21]=111 ;

      si11=100;si12=98 ;si21=1 ;si22=2 ;
      fea06[si11-si12][si21+si22]=111 ;          

      si11=5 ;fl6=9.0f ;
      fea06[2+(si11-2)][-9+(short)fl6+10]=111 ;  
      siptr = &si11 ;
      si11 = 8;
      fea06[*siptr-2][2+*(siptr)-10]=111 ;       
      si11=2 ;si12=10 ;si21=1 ;si22=10 ;
      fea06[si11+si12][si21+si22]=111 ;          
      si11=5 ;si12=4 ;si21=3 ;si22=2 ;
      fea06[si11+si12+si21+si22][10]=111 ;       
      si11=17 ;fl6=5.0f ;
      fea06[sizeof(fl6)+si11-(short)fl6]
      [sizeof(fl6)-sizeof(si6)]=111 ;            

      if (fea06[1][1]   ==111) judge++ ;
      if (fea06[2][3]   ==111) judge++ ;
      if (fea06[5][10]  ==111) judge++ ;
      if (fea06[6][0]   ==111) judge++ ;
      if (fea06[12][11] ==111) judge++ ;
      if (fea06[14][10] ==111) judge++ ;
      if (fea06[16][2]  ==111) judge++ ;
      ichck("FEA01.06",7,judge,"add/sub expresion test") ;
   }



   {
      int judge = 0 ;
      char fea07[18][18] ;
      long int li7;
      long *liptr;
      float     fl7;
      long int li11,li12,li21,li22 ;
                                                       
      li11=1 ;li12=1 ;
      fea07[li11<<1][li12<<2]=111 ;
                                                       
      li11=64 ;
      li12=2147483647 ;
      fea07[li11>>4][li12>>30]=111 ;
                                                       
      li11=1 ;li12=2; li21=1 ;li22=3 ;
      fea07[(li11<<2)+(li11<<3)][li21<<1+li22]=111 ;
                                                       
      li11=1 ;
      li12=16 ;
#if INT64 || LONG64
      fea07[li11<<sizeof(fl7)][li12>>sizeof(__int32)]=111 ;
#elif defined(__x86_64__) || defined(__aarch64__) || defined(_LP64)
      fea07[li11<<sizeof(fl7)][li12>>sizeof(int)]=111 ;
#else
      fea07[li11<<sizeof(fl7)][li12>>sizeof(long)]=111 ;
#endif
                                                       
      fl7=1.0f ;liptr=&li11 ;li11=1;
      fea07[(long)fl7<<4][*liptr<<4]=111 ;
      if (fea07[2][4]   ==111) judge++ ;
      if (fea07[4][1]   ==111) judge++ ;
      if (fea07[12][16] ==111) judge++ ;
      if (fea07[16][1]  ==111) judge++ ;
      if (fea07[16][16] ==111) judge++ ;
      ichck("FEA01.07",5,judge,"shift expresion test") ;
   }



   {
      int judge = 0 ;
      struct tag8 { int ii8 ; } (fea08)[2] ;
      int i11 ;
      i11=10 ;
      fea08[i11>11].ii8=111 ; 
      fea08[i11<11].ii8=222 ; 
      if (fea08[0].ii8==111) judge++ ;
      if (fea08[1].ii8==222) judge++ ;
      fea08[i11>=11].ii8=333 ; 
      fea08[i11<=11].ii8=444 ; 
      if (fea08[0].ii8==333) judge++ ;
      if (fea08[1].ii8==444) judge++ ;
      fea08[i11>=10].ii8=555 ; 
      if (fea08[1].ii8==555) judge++ ;
      fea08[i11<=10].ii8=666 ; 
      if (fea08[1].ii8==666) judge++ ;
      ichck("FEA01.08",6,judge,"relation expresion test") ;
   }



   {
#if defined(msp)|defined(uxp)
      int judge = 0 ;
      char (fea09)[2][2][2] ;
      long long int li9;
      long long int *lliptr;
      float     fl9=10.0f;
      lliptr=&li9 ;
      li9=10 ;
                                                       
      fea09[li9==11][li9==11][(long long int)fl9==10] ='a' ;
      fea09[li9==11][*lliptr==10][(li9==11)]     ='b' ;
      fea09[li9!=10][li9==10][li9==10]           ='c' ;
      fea09[li9==10][li9==10][(li9==10)==0]      ='d' ;
      fea09[li9==10][li9==10][li9==10]           ='e' ;
      if (fea09[0][0][1]=='a') judge++ ;
      if (fea09[0][1][0]=='b') judge++ ;
      if (fea09[0][1][1]=='c') judge++ ;
      if (fea09[1][1][0]=='d') judge++ ;
      if (fea09[1][1][1]=='e') judge++ ;
      ichck("FEA01.09",5,judge,"eq expresion test") ;
#endif
   }



   {
      int judge = 0 ;
      union tag10 {int ii10;} (fea10)[6] ;
      long int li10;
      long int *liptr;
      float     fl10;
      liptr=&li10 ;
      li10=7L ;
      (fea10)[*liptr^(*liptr)].ii10=111 ;                    
      li10=0L ;
      (fea10)[li10|0x01].ii10=222 ;                          
      li10=7L ;
      (fea10)[li10^0x05].ii10=333 ;                          
      fl10 = 1.0f;
      (fea10)[(long)fl10|sizeof(short int)].ii10=444 ;       
      (fea10)[0x04|0x03&0x01^0x05].ii10=555 ;                
      li10=5L ;
      (fea10)[li10&li10].ii10=666 ;                          
      if ((fea10)[0].ii10==111) judge++ ;
      if ((fea10)[1].ii10==222) judge++ ;
      if ((fea10)[2].ii10==333) judge++ ;
      if ((fea10)[3].ii10==444) judge++ ;
      if ((fea10)[4].ii10==555) judge++ ;
      if ((fea10)[5].ii10==666) judge++ ;
      ichck("FEA01.10",6,judge,"bit expresion test") ;
   }

  header("","ARRAY EXPRESION TEST") ;
  }
