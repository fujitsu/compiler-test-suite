module func_type
   implicit none
   type struct
      real(8)                 :: area
      real(8), dimension(3)   :: nv
      real(8), dimension(5)   :: flux
      real(8)                 :: mu, mu_t
      real(8), dimension(3)   :: dTdx, u
      real(8), dimension(3,3) :: dudx
   end type
end module

subroutine sub_01()
  use func_type
  type(struct), pointer, dimension(:,:,:) :: a
  integer :: i,j,k
  
  allocate( a(1:100,1:100,1:100 ) )
  
  do k=1,100
     do j=1,100
        do i=1,100
          a(i,j,k)%dudx  = 0.0
        end do
     end do
  end do

  call check(a)
  
end subroutine sub_01

subroutine check(a)
  use func_type
  type(struct),dimension(1:100,1:100,1:100) :: a
  integer :: i,j
  real(8) :: tmp
  
  tmp = 0.0
  do j=1,3
     do i=1,3
        tmp = tmp + a(100,100,100)%dudx(i,j)
     end do
  end do

  if (int(tmp) .ne. 0) then
     print *, "ng"
  endif
  print *, "ok"
end subroutine check
  
program main
  call sub_01()
end program main
