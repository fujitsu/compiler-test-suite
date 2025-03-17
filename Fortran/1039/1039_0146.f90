module m_foo
  implicit none
  real(kind(0d0)), pointer :: p(:,:)
end module m_foo

program main
  use m_foo
  implicit none
  integer :: idum1(2), idum2(2)
  real(kind(0d0)) :: t(200,100)

  call init
  idum1 = 1
  idum2 = 2

  call foo(p,max(idum1,idum2))  
print *,'pass'
end program main

subroutine foo(a,idum)
  implicit none
  real(kind(0d0)) :: a(200,100)
  integer :: idum(2)
  write(1,'(a,"0x",z16.16)') ' foo: loc(a) = ', loc(a)
  return
end subroutine foo

subroutine init
  use m_foo
  implicit none
  allocate(p(200,100))
  p(:,:) = 0.0d0
  write(1,'(a,"0x",z16.16)') 'init: loc(p) = ', loc(p)
  return
end subroutine init
