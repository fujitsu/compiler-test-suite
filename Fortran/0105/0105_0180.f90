complex(8),dimension(25,25),target::MatrixT
complex(8),dimension(:,:),pointer::Matrix
MatrixT=reshape((/(i,i=1,25*25)/),(/25,25/))
Matrix=>MatrixT(1:25:5,1:25:5)
call sub(Matrix)
print *,'pass'
contains
subroutine sub(Matrix)
complex(8),dimension(:,:),pointer::Matrix
complex(8),pointer,dimension(:,:)::Matrix_2
complex(8),dimension(5)::Vector,Vector_Add,R_vector
!
Vector=(/1,2,3,4,5/)
allocate(Matrix_2(5,5))
R_vector = MATMUL(Matrix,Vector)
if (any(abs(R_vector-(/&
5015._8,5090._8,5165._8,5240._8,5315._8&
/))>0.00001_8))print *,'error'

end subroutine
end
