module m_foo
  implicit none
  real(kind(0d0)), pointer :: p(:,:,:)
  type grid_t
    integer, pointer :: idum(:)
  end type grid_t
  type(grid_t) :: grid
end module m_foo

subroutine init
  use m_foo
  implicit none
  allocate(p(200,100,2))
  p(:,:,:) = 0.0d0
  write(19,'(a,"0x",z16.16)') 'init: loc(p) = ', loc(p)
  allocate(grid%idum(2))
  grid%idum=0
  return
end subroutine init

subroutine foo(a,idum)
  implicit none
  real(kind(0d0)) :: a(200,100,2)
  integer :: idum(2)
  write(19,'(a,"0x",z16.16)') ' foo: loc(a) = ', loc(a)
  return
end subroutine foo

subroutine foo2(a,idum)
  implicit none
  real(kind(0d0)) :: a(200,100,1)
  integer :: idum(2)
  write(19,'(a,"0x",z16.16)') ' foo: loc(a) = ', loc(a)
  return
end subroutine foo2

subroutine foo3(a,idum)
  implicit none
  real(kind(0d0)) :: a(200,100,2)
  integer :: idum(*)
  write(19,'(a,"0x",z16.16)') ' foo: loc(a) = ', loc(a)
  return
end subroutine foo3

subroutine bar(a,b)
  implicit none
  real(kind(0d0)) :: a(200,100,2), b(200,100,2)
  write(19,'(a,"0x",z16.16)') ' bar: loc(a) = ', loc(a)
  return
end subroutine bar

program main
  use m_foo
  implicit none
  integer :: n
  integer :: idum1(2), idum2(2)
  real(kind(0d0)) :: t(200,100,2)

  call init
  idum1 = 1
  idum2 = 2
  n=1

  call foo(p,idum1)
  call foo(p(:,:,:),idum1)
  call foo2(p(:,:,n),idum1)            
  call foo(p,max(idum1,idum2))
  call foo(p,max(grid%idum,idum2))
  call foo(p,max(grid%idum(n:2),idum2))  
  call foo3(p,max(grid%idum(n),idum2)) 

  call bar(p,t)
  call bar(p,t(:,:,:))
print *,'pass'
end program main
