module m1
contains
SUBROUTINE SGETRF_F90(A)
 complex(KIND=8), INTENT(INOUT) :: A(0:6,0:6)
 K=0
 J=1
 JB=2
 M=5
 N=5
          A(J+JB:M, J+JB:N) =  A(J+JB:M, J+JB:N) -              &
              MATMUL(A(J+K:J+JB, J+JB:N),A(J+JB:M,K:J+JB-1))
end SUBROUTINE
end
 use m1
 complex(KIND=8)               :: A(7,7)
A=reshape((/(i,i=1,49)/),(/7,7/))
 call SGETRF_F90(A)
if (any(abs((/A/)-(/&
1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,-439,-453,-467,28,29,30,31,-1062,-1097,-1132,35,36,37,38,-1685,-1741,-1797,42,43,44,45,46,47,48,49&
/))>0.001))print *,'error'

print *,'pass'
end
