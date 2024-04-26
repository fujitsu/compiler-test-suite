module m1
integer,parameter::WP=8
contains
SUBROUTINE SGETRI_F90(A)
   complex(KIND=WP), INTENT(INOUT) :: A(5,5)
   INTEGER                        J, N
   complex(KIND=WP),ALLOCATABLE   :: WORK(:,:)
   N=5
   J=2
     ALLOCATE(WORK(N,1))
     WORK(:,1)=(/11,12,13,14,15/)
     A(1:N, J) = A(1:N, J) -                    &
            MATMUL(A(1:N, J+1:N), WORK(J+1:N, 1))
end SUBROUTINE
END
use m1
complex(KIND=WP) :: A(5,5)
a=reshape((/(i,i=1,25)/),(/5,5/))
call SGETRI_F90(A)
if (any(abs((/A/)-(/&
1,2,3,4,5,-676,-717,-758,-799,-840,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25&
/))>0.0001_WP))print *,'error'
print *,'pass'
end
