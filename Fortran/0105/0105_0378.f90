module m1
contains
SUBROUTINE SGETRF_F90(A)
 complex(KIND=8), INTENT(INOUT) :: A(7,7)
 J=1
 JB=2
 M=6
 N=6
          A(J+JB:M, J+JB:N) =  A(J+JB:M, J+JB:N) -              &
              MATMUL(A(3:6, 3:6),A(J+JB:M,J+JB:N))
end SUBROUTINE
end
 use m1
 complex(KIND=8)               :: A(7,7)
A=reshape((/(i,i=1,49)/),(/7,7/))
 call SGETRF_F90(A)
if (any(abs((/A/)-(/&
1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,-2053,-2126,-2199,-2272,21,22,23,-2816,-2917,-3018,-3119,28,29,30,-3579,-3708,-3837,-3966,35,36,37,-4342,-4499,-4656,-4813,42,43,44,45,46,47,48,49&
/))>0.001))print *,'error'

print *,'pass'
end

