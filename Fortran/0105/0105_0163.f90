module m1
contains
SUBROUTINE SGETRF_F90(A)
 complex(KIND=8), INTENT(INOUT) :: A(:,:)
 J=1
 JB=2
 M=5
 N=6
          A(J+JB:M, J+JB:N) =  A(J+JB:M, J+JB:N) -              &
              MATMUL(A(J+JB:M,J:J+JB-1),A(J:J+JB-1, J+JB:N))
end SUBROUTINE
end
 use m1
 complex(KIND=8)               :: A(7,7)
A=reshape((/(i,i=1,49)/),(/7,7/))
 call SGETRF_F90(A)
if (any(abs((/A/)-(/&
1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,-188,-218,-248,20,21,22,23,-272,-316,-360,27,28,29,30,-356,-414,-472,34,35,36,37,-440,-512,-584,41,42,43,44,45,46,47,48,49&
/))>0.001))print *,'error'

print *,'pass'
end
