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
  write(21,'(a,"0x",z16.16)') 'init: loc(p) = ', loc(p)
  allocate(grid%idum(3))
   grid%idum=(/21,22,23/)
  return
end subroutine init

subroutine foo(a,idum,k)
  real(kind(0d0)) :: a(200,100,2)
  integer :: idum(3)
  write(21,'(a,"0x",z16.16)') ' foo: loc(a) = ', loc(a)
  select case(k)
  case(1)
    m=0
  case(2)
    m=10
  case(3)
    m=20
  end select
  if (any(idum/=(/1,2,3/)+m))print *,'error-1'
end subroutine foo

subroutine foo2(a,idum,k)
  real(kind(0d0)) :: a(200,100,1)
  integer :: idum(3)
  write(21,'(a,"0x",z16.16)') ' foo: loc(a) = ', loc(a)
  select case(k)
  case(1)
    m=0
  case(2)
    m=10
  case(3)
    m=20
  end select
  if (any(idum/=(/1,2,3/)+m))print *,'error-2'
end subroutine foo2

subroutine foo3(a,idum,k)
  real(kind(0d0)) :: a(200,100,2)
  integer :: idum(*)
  write(21,'(a,"0x",z16.16)') ' foo: loc(a) = ', loc(a)
  select case(k)
  case(1)
    m=0
  case(2)
    m=10
  case(3)
    m=20
  end select
  if (any(idum(1:3)/=21))print *,'error-3',idum(1:3)
end subroutine foo3

subroutine bar(a,b)
  implicit none
  real(kind(0d0)) :: a(200,100,2), b(200,100,2)
  write(21,'(a,"0x",z16.16)') ' bar: loc(a) = ', loc(a)
  return
end subroutine bar

program main
  use m_foo
  implicit none
  integer :: n
  integer,target :: tdum1(6), tdum2(6)
  integer,pointer :: idum1(:), idum2(:)
  real(kind(0d0)) :: t(200,100,2)

 idum1=> tdum1(1:6:2)
 idum2=> tdum2(1:6:2)
  call init
  idum1 = (/1,2,3/)
  idum2 = (/11,12,13/)
  n=1

  call foo(p,idum2,2)
  call foo(p(:,:,:),idum1,1)
  call foo2(p(:,:,n),idum1,1)            
  call foo(p,max(idum1,idum2),2)
  call foo(p,max(grid%idum,idum2),3)
  call foo(p,max(grid%idum(n:3),idum2),3)  
  call foo(p,max(grid%idum(n:3:n),idum2(:)),3)  
  call foo3(p,max(grid%idum(n),idum2),3) 

  call bar(p,t)
  call bar(p,t(:,:,:))
print *,'pass'
end program main
