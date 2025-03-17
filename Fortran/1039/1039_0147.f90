module m_foo
  implicit none
  real(kind(0d0)), pointer :: p(:,:)
end module m_foo

program main
  use m_foo
parameter (i2=200)
  integer :: idum1(i2,i2), idum2(i2,i2)
  idum1=0
  idum2=0
  call sub(idum1,idum2)
print *,'pass'
  contains
  subroutine sub(idum1,idum2)
  integer :: idum1(:,:), idum2(:,:)
  real(kind(0d0)) :: t(200,100)
  call init
  do k=1,10
  call foo(p,matmul(idum1,idum2))
  end do
 end subroutine
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
