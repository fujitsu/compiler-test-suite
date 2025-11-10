
















#include <stdio.h>
#include "001.h"







int main()
{



  char *ans="   ";



  header("","#assert test.") ;

#if defined uxp



#assert  pre_01(ast_01)
#if #pre_01(ast_01)
  ans="ok";
#else    
  ans="ng";
#endif 
  schck("pua01_01","ok",ans,"pua01_01");



#assert  pre_02(abcdefghijklmnopqrstuvwxyz,\
                abcdefghijklmnopqrstuvwxyz,\
                ABCDEFGHIJKLMNOPQRSTUVWXYZ,\
                A0123456789012345678901234)
#if (#pre_02(abcdefghijklmnopqrstuvwxyz))&&\
    (#pre_02(abcdefghijklmnopqrstuvwxyz))&&\
    (#pre_02(ABCDEFGHIJKLMNOPQRSTUVWXYZ))&&\
    (#pre_02(A0123456789012345678901234))
  ans="ok";
#else 
  ans="ng";
#endif 
  schck("pua01_02","ok",ans,"pua01_02");



#assert P(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,\
          a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z)
#assert P(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,\
          a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z)
#assert P(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,\
          a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z)
#assert P(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,\
          a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z)
#if (#P(A)) && (#P(B)) && (#P(C)) && (#P(D)) && (#P(E)) && (#P(F)) \
 && (#P(G)) && (#P(H)) && (#P(I)) && (#P(J)) && (#P(K)) && (#P(L)) \
 && (#P(M)) && (#P(N)) && (#P(O)) && (#P(P)) && (#P(Q)) && (#P(R)) \
 && (#P(S)) && (#P(T)) && (#P(U)) && (#P(V)) && (#P(W)) && (#P(X)) \
 && (#P(Y)) && (#P(Z)) \
 && (#P(a)) && (#P(b)) && (#P(c)) && (#P(d)) && (#P(e)) && (#P(f)) \
 && (#P(g)) && (#P(h)) && (#P(i)) && (#P(j)) && (#P(k)) && (#P(l)) \
 && (#P(m)) && (#P(n)) && (#P(o)) && (#P(p)) && (#P(q)) && (#P(r)) \
 && (#P(s)) && (#P(t)) && (#P(u)) && (#P(v)) && (#P(w)) && (#P(x)) \
 && (#P(y)) && (#P(z))
  ans="ok";
#else 
  ans="ng";
#endif 
  schck("pua01_03","ok",ans,"pua01_03");



#assert  q
#assert  q
#assert  q
#if #q(q)
  ans="ng";
#else 
  ans="ok"; 
#endif 
  schck("pua01_04","ok",ans,"pua01_04");



#assert  pre_05abcdefghijklmnopqrstuvwxyz\
ABCDEFGHIJKLMNOPQRSTUVWXYZ(ast_05abcdefghijklmnopqrstuvwxyz\
ABCDEFGHIJKLMNOPQRSTYVWXYZ)

#assert  pre_05abcdefghijklmnopqrstuvwxyz\
ABCDEFGHIJKLMNOPQRSTUVWXYZ(ast_05abcdefghijklmnopqrstuvwxyz\
ABCDEFGHIJKLMNOPQRSTYVWXYZ)

#if #pre_05abcdefghijklmnopqrstuvwxyz\
ABCDEFGHIJKLMNOPQRSTUVWXYZ(ast_05abcdefghijklmnopqrstuvwxyz\
ABCDEFGHIJKLMNOPQRSTYVWXYZ)
  ans="ok";
#else 
  ans="ng";  
#endif 
  schck("pua01_05","ok",ans,"pua01_05");

#endif                            



  header("","#assert test.") ;
  }
