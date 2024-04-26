module m1
integer,parameter::WP=8
contains
SUBROUTINE SGETRI_F90(A)
   complex(KIND=WP), INTENT(INOUT) :: A(:,:)
   INTEGER                        J, N,JB,NB
   complex(KIND=WP),ALLOCATABLE   :: WORK(:,:)
   N=9
   J=2
   JB=4
   NB=6
     ALLOCATE(WORK(N,NB))
     WORK=0
     WORK=reshape((/(i,i=11,N*NB+10)/),(/N,NB/))
A(1:N, J:J+JB-1) = A(1:N, J:J+JB-1) - &
               MATMUL(A(1:N, J+JB:N), WORK(J+JB:N, 1:JB))

end SUBROUTINE
END
use m1
complex(KIND=WP) :: A(9,9)
A=reshape((/(i,i=1,9*9)/),(/9,9/))
call SGETRI_F90(A)
if (any(abs((/A/)-(/&
1,2,3,4,5,6,7,8,9,-4200,-4269,-4338,-4407,-4476,-4545,-4614,-4683,&
-4752,-6333,-6438,-6543,-6648,-6753,-6858,-6963,-7068,-7173,-8466,&
-8607,-8748,-8889,-9030,-9171,-9312,-9453,-9594,-10599,-10776,&
-10953,-11130,-11307,-11484,-11661,-11838,-12015,&
46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,&
63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81&
/))>0.0001_WP))print *,'error'
print *,'pass'
end
