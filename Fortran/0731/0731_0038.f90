 INTEGER       :: J, K, L, M(1000)
REAL          :: R(200)
CHARACTER(10) :: D, T
character(10) :: blank=""

j=444;m(j)=7;k=2;l=2;M(J+1)=0
call MVBITS(M(J),K,L,M(J+1),K*0)
if (m(j+1)/=1)write(6,*) "NG"
print *,'pass'
end
