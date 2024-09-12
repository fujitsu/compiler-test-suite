  implicit none

  integer,target :: t1 = 5
  integer :: i,j
  integer :: aa(5,10), bb(5,10)
  
  type ty1
     integer :: m1=10
     integer :: m2(2)=(/20,30/)
     integer,pointer :: p1 =>t1
  end type ty1
  type(ty1) :: str

  aa = 10
  str%m1 = 1000
  
  !$omp parallel private(j,i,str)   
  do j = 1,10
     do i = 1,5
        bb(i,j) = aa(i,j) + str%m1 + str%m2(2) + str%p1
     enddo
  enddo
  !$omp end parallel

  
  print *, aa(5,10)
  print *, bb(5,10)
  
end program
