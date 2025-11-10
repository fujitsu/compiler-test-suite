
















#include <stdio.h>
#include "001.h"







int main()
{



  char *ans="   ";



  header("","#predicate(assert_name) test.") ;

#if defined uxp



#assert    pre_01 (ast_01)
#unassert  pre_01 (ast_01)
#assert    pre_01 (ast_01)

#if #pre_01 (ast_01)
  ans="ok";
#else    
  ans="ng";
#endif 
  schck("pue01_01","ok",ans,"pue01_01");



#assert    pre_02(abcdefghijklmnopqrstuvwxyz,\
                  abcdefghijklmnopqrstuvwxyz,\
                  ABCDEFGHIJKLMNOPQRSTUVWXYZ,\
                  A0123456789012345678901234)
#unassert  pre_02(abcdefghijklmnopqrstuvwxyz0,\
                  abcdefghijklmnopqrstuvwxyz0,\
                  ABCDEFGHIJKLMNOPQRSTUVWXYZ,\
                  A0123456789012345678901234)
#if  (#pre_02(ABCDEFGHIJKLMNOPQRSTUVWXYZ))
  ans="ng";
#else 
  ans="ok";
#endif 
  schck("pue01_02","ok",ans,"pue01_02");



#assert   P(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,\
            a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z)
#unassert Q(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,\
            a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z)

  ans="ng";
#if    (#P(A1)) 
#elif  (#P(A2))
#elif  (#P(A3))
#elif  (#P(A4))
#elif  (#P(A5))
#elif  (#P(A6))
#elif  (#P(A7))
#elif  (#P(A8))
#elif  (#P(A9))
#elif  (#P(A))
  ans="ok";
#else 
  ans="ng";
#endif 
  schck("pue01_03","ok",ans,"pue01_03");

#endif                            



  header("","#predicate(assert_name) test.") ;
  }
