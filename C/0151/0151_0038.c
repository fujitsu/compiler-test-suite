
















  #include "001.h"








  short func11(void)
  {
      short int si=1;
      return si;
  }




int main()
  {

  header("","MONADIC OPERATOR TEST");




  {
      int   judge = 0 ;
      short func11(void) ;
      short s_wk1 = 1;
      short *s_ptr ;
      short s_tbl[10]={1,2,3,4,5,6,7,8,9} ;
      struct tag1 {short s_wk1;} ;
      struct tag1  sarea={1} ;
      struct tag1 *psarea ;
      psarea = &sarea ;
      s_ptr = s_tbl;
#if defined(os2)
      if (??-s_tbl[0]      == 0xFFFE) judge++ ;
      if (??-func11()      == 0xFFFE) judge++ ;
      if (??-sarea.s_wk1   == 0xFFFE) judge++ ;
      if (??-psarea->s_wk1 == 0xFFFE) judge++ ;
      if (??-s_wk1++       == 0xFFFE) judge++ ;
      if (??-s_wk1--       == 0xFFFD) judge++ ;
      if (??-++s_wk1       == 0xFFFD) judge++ ;
      if (??---s_wk1       == 0xFFFE) judge++ ;
      if (??-(short)s_wk1  == 0xFFFE) judge++ ; 
      if (??-sizeof(short) == 0xFFFD) judge++ ;
      if (??-sizeof s_wk1  == 0xFFFD) judge++ ;
#elif INT64
      if (??-s_tbl[0]      == 0xFFFFFFFFFFFFFFFE) judge++ ;
      if (??-func11()      == 0xFFFFFFFFFFFFFFFE) judge++ ;
      if (??-sarea.s_wk1   == 0xFFFFFFFFFFFFFFFE) judge++ ;
      if (??-psarea->s_wk1 == 0xFFFFFFFFFFFFFFFE) judge++ ;
      if (??-s_wk1++       == 0xFFFFFFFFFFFFFFFE) judge++ ;
      if (??-s_wk1--       == 0xFFFFFFFFFFFFFFFD) judge++ ;
      if (??-++s_wk1       == 0xFFFFFFFFFFFFFFFD) judge++ ;
      if (??---s_wk1       == 0xFFFFFFFFFFFFFFFE) judge++ ;
      if (??-(short)s_wk1  == 0xFFFFFFFFFFFFFFFE) judge++ ; 
      if (??-sizeof(short) == 0xFFFFFFFFFFFFFFFD) judge++ ;
      if (??-sizeof s_wk1  == 0xFFFFFFFFFFFFFFFD) judge++ ;
#elif LONG64 || __x86_64__ || __aarch64__ || defined(_LP64)
      if (??-s_tbl[0]      == 0xFFFFFFFE) judge++ ;
      if (??-func11()      == 0xFFFFFFFE) judge++ ;
      if (??-sarea.s_wk1   == 0xFFFFFFFE) judge++ ;
      if (??-psarea->s_wk1 == 0xFFFFFFFE) judge++ ;
      if (??-s_wk1++       == 0xFFFFFFFE) judge++ ;
      if (??-s_wk1--       == 0xFFFFFFFD) judge++ ;
      if (??-++s_wk1       == 0xFFFFFFFD) judge++ ;
      if (??---s_wk1       == 0xFFFFFFFE) judge++ ;
      if (??-(short)s_wk1  == 0xFFFFFFFE) judge++ ; 
      if (??-sizeof(short) == 0xFFFFFFFFFFFFFFFD) judge++ ;
      if (??-sizeof s_wk1  == 0xFFFFFFFFFFFFFFFD) judge++ ;
#else
      if (??-s_tbl[0]      == 0xFFFFFFFE) judge++ ;
      if (??-func11()      == 0xFFFFFFFE) judge++ ;
      if (??-sarea.s_wk1   == 0xFFFFFFFE) judge++ ;
      if (??-psarea->s_wk1 == 0xFFFFFFFE) judge++ ;
      if (??-s_wk1++       == 0xFFFFFFFE) judge++ ;
      if (??-s_wk1--       == 0xFFFFFFFD) judge++ ;
      if (??-++s_wk1       == 0xFFFFFFFD) judge++ ;
      if (??---s_wk1       == 0xFFFFFFFE) judge++ ;
      if (??-(short)s_wk1  == 0xFFFFFFFE) judge++ ; 
      if (??-sizeof(short) == 0xFFFFFFFD) judge++ ;
      if (??-sizeof s_wk1  == 0xFFFFFFFD) judge++ ;
#endif

      ichck("FEU02.11",11,judge,"??-operand, short type");
  }



  {
      int judge = 0 ;
      short func11(void);
      short E = 777 ;
      if (777 == *&E) judge++ ;         
      if (*&func11 == func11) judge++ ; 

      ichck("FEU02.12",2,judge,"E EQUAL *&E");
  }



  {
      int judge = 0 ;
      int i_wk1 = 777;            
      int *ip1;
      int **ip2;
      int ***ip3;
      int ****ip4;
      int *****ip5;
      int ******ip6;
      int *******ip7;
      int ********ip8;
      int *********ip9;
      int **********ip10;
      int ***********ip11;
      int ************ip12;
      int *************ip13;

      ip1  = &i_wk1 ;
      ip2  = &ip1 ;
      ip3  = &ip2 ;
      ip4  = &ip3 ;
      ip5  = &ip4 ;
      ip6  = &ip5 ;
      ip7  = &ip6 ;
      ip8  = &ip7 ;
      ip9  = &ip8 ;
      ip10 = &ip9 ;
      ip11 = &ip10 ;
      ip12 = &ip11 ;
      ip13 = &ip12 ;
      if (*ip1 == 777) judge++ ;
      if (**ip2 == 777) judge++ ;
      if (***ip3 == 777) judge++ ;
      if (****ip4 == 777) judge++ ;
      if (*****ip5 == 777) judge++ ;
      if (******ip6 == 777) judge++ ;
      if (*******ip7 == 777) judge++ ;
      if (********ip8 == 777) judge++ ;
      if (*********ip9 == 777) judge++ ;
      if (**********ip10== 777) judge++ ;
      if (***********ip11== 777) judge++ ;
      if (************ip12== 777) judge++ ;
      if (*************ip13== 777) judge++ ;

      ichck("FEU02.13",13,judge,"multi (*) pointer");
  }



  {
      int judge = 0 ;
      int i_wk1 = 777;            

      if (*&i_wk1 == 777) judge++ ;
      if (*&*&i_wk1 == 777) judge++ ;
      if (*&*&*&i_wk1 == 777) judge++ ;
      if (*&*&*&*&i_wk1 == 777) judge++ ;
      if (*&*&*&*&*&i_wk1 == 777) judge++ ;
      if (*&*&*&*&*&*&i_wk1 == 777) judge++ ;
      if (*&*&*&*&*&*&*&i_wk1 == 777) judge++ ;
      if (*&*&*&*&*&*&*&*&i_wk1 == 777) judge++ ;
      if (*&*&*&*&*&*&*&*&*&i_wk1 == 777) judge++ ;
      if (*&*&*&*&*&*&*&*&*&*&i_wk1 == 777) judge++ ;
      if (*&*&*&*&*&*&*&*&*&*&*&i_wk1 == 777) judge++ ;
      if (*&*&*&*&*&*&*&*&*&*&*&*&i_wk1 == 777) judge++ ;
      if (*&*&*&*&*&*&*&*&*&*&*&*&*&i_wk1 == 777) judge++ ;
      if (*&*&*&*&*&*&*&*&*&*&*&*&*&*&i_wk1 == 777) judge++ ;

      ichck("FEU02.14",14,judge,"multi (*,&)pointer");
  }

  header("","MONADIC OPERATOR TEST");
  }
