
















  #include <stddef.h>
  #include "001.h"




  struct stag1 {
                void *v_a;
                void *v_b;
                void *v_c[10];
                struct stag1 *s_d;
                } str_tag1 ;
  int int_tbl[10]={000,111,222,333,444,555,666,777,888,999} ;
  char char_tbl[28]="0abcdefghijklmnopqrstuvwxyz" ;
  long int li_tbl[5]={111L,222L,333L,444L,555L} ;

#if (__GNUC__)
  long long int lli_tbl[5]={111LL,222LL,333LL,444LL,555LL} ;
#elif !(solaris1 || SXOS)
  long long int lli_tbl[5]={111LL,222Ll,333LL,444Ll,555LL} ;
#endif
#if !defined os2 
  wchar_t wch_tbl[6]=L"abcdef" ;
#endif
  float fl_tbl[5]={1.0F,2.0f,3.0F,4.0f,5.0F} ;
  double dbl_tbl[5]={1.0,2.0,3.0,4.0,5.0} ;
  long double ldbl_tbl[5]={1.0L,2.0l,3.0L,4.0L,5.0l} ;



  char *func026(int) ;             








  char *func026(int parm_i)
  {
  char *tbl_p ;
  tbl_p = &char_tbl[parm_i] ;
  return tbl_p ;
  }




int main()
  {




  int int_wk1 ;                  






  header("","DEFINITION TYPE TEST(derived type)") ;




  {
  volatile void *v_ptr ;
  v_ptr = &int_tbl[7] ;
  ichck("TKT02.25",777,*(int *)v_ptr,"volatile void pointer") ;
  }



  {
  volatile char *c_ptr ;
  int i_w ;
  i_w = 26 ;
  c_ptr = func026(i_w) ;
  cchck("TKT02.26",'z',*c_ptr,"volatile char pointer") ;
  }



  {
  volatile int *i_ptr1 ;
  volatile int *i_ptr2[2] ;
  int_wk1 = 777 ;
  i_ptr1 = &int_wk1 ;
  ichck("TKT02.27",777,*i_ptr1,"volatile int pointer") ;
  }



  {
  static int int_swk0 ;
  static int int_swk1 ;
  static int int_swk2 ;
  const volatile int *i_ptr1=&int_swk1 ;
  const volatile int *i_ptr2[3]={&int_swk0,&int_swk1,&int_swk2} ;
  int_swk1 = 333 ;
  if (*i_ptr1==333) int_swk1=777 ;
  if (*i_ptr1==777) int_swk1=999 ;
  ichck("TKT02.28",999,*i_ptr1,"const volatile int pointer") ;
  }



  {
  static short int sint_swk0 ;
  static short int sint_swk1 ;
  static short int sint_swk2 ;
  volatile short int *si_ptr1=&sint_swk1 ;
  volatile short int *si_ptr2[3]={&sint_swk0,&sint_swk1,&sint_swk2} ;
  sint_swk1 = 333 ;
  if (*si_ptr1==333) sint_swk1=777 ;
  if (*si_ptr1==777) sint_swk1=999 ;
  sichck("TKT02.29",999,*si_ptr1,"volatile short int pointer") ;
  }



  {
  static long int lint_swk0 ;
  static long int lint_swk1 ;
  static long int lint_swk2 ;
  volatile long int *li_ptr1=&lint_swk1 ;
  volatile long int *li_ptr2[3]={&lint_swk0,&lint_swk1,&lint_swk2} ;
  lint_swk1 = 333333l ;
  if (*li_ptr1==333333l) lint_swk1=777777l;
  if (*li_ptr1==777777l) lint_swk1=999999l;
  lichck("TKT02.30",999999l,*li_ptr1,"volatile long int pointer") ;
  }



  {
  volatile float *fl_ptr1;
  volatile float *fl_ptr2 ;
  float *flt ;
  const float *cflt ;
  int int_judge =0 ;
  int_wk1 = 0 ;
  fl_ptr1 = fl_tbl ;
  fl_ptr2 = &fl_tbl[1] ;
  int_wk1 = (int)fl_ptr2 - (int)fl_ptr1 ;
  if (int_wk1==4) int_judge++ ;
  fl_ptr1+=4 ;                    
  if (*fl_ptr1==5.0f) int_judge++ ;
  ichck("TKT02.31",2,int_judge,"volatile float pointer") ;
  }



  {
  long double ll;
  volatile long double *ldbl_ptr1;
  volatile long double *ldbl_ptr2 ;
  int int_judge =0 ;
  int_wk1 = 0 ;
  ldbl_ptr1 = ldbl_tbl ;
  ldbl_ptr2 = &ldbl_tbl[1] ;
  int_wk1 = (int)ldbl_ptr2 - (int)ldbl_ptr1 ;
#if defined(os2)
  if (int_wk1==10) int_judge++ ;
#elif defined(sxo)  || defined(i386)
  if (int_wk1==12) int_judge++ ;
#elif defined(_WIN32) || defined(__mips) 
  if (int_wk1==8) int_judge++ ;
#else
  if (int_wk1==16) int_judge++ ;
#endif
  ldbl_ptr1+=4 ;                    
  if (*ldbl_ptr1==5.0l) int_judge++ ;
  ichck("TKT02.32",2,int_judge,"volatile long double pointer") ;
  }



#if !(solaris1 || SXOS)
  {
  volatile long long int *lli_ptr1;
  volatile long long int *lli_ptr2 ;
  int int_judge =0 ;
  int_wk1 = 0 ;
  lli_ptr1 = lli_tbl ;
  lli_ptr2 = &lli_tbl[1] ;
  int_wk1 = (int)lli_ptr2 - (int)lli_ptr1 ;
  if (int_wk1==8) int_judge++ ;
  lli_ptr1+=4 ;                   
  if (*lli_ptr1==555ll) int_judge++ ;
  ichck("TKT02.33",2,int_judge,"volatile long long int pointer") ;
  }
#endif



  {
#if !defined(__NO_WC) && !defined(__HPC_ACE__)
  volatile wchar_t *wch_ptr1;
  volatile wchar_t *wch_ptr2 ;
  int int_judge =0 ;
  int_wk1 = 0 ;
  wch_ptr1 = wch_tbl ;
  wch_ptr2 = &wch_tbl[1] ;
  int_wk1 = (int)wch_ptr2 - (int)wch_ptr1 ;
#if defined(solaris1) || defined(SXOS) || defined(_WIN32)
  if (int_wk1==2) int_judge++ ;
#else
  if (int_wk1==4) int_judge++ ;
#endif
  wch_ptr1+=4 ;                   
  
#if defined(i386)
   int_judge++; 
#else 
  if (*wch_ptr1==L'e') int_judge++ ;
#endif   
  ichck("TKT02.34",2,int_judge,"volatile wchar_t pointer") ;
#endif 
  }

  header("","DEFINITION TYPE TEST(derived type)") ;
  }
