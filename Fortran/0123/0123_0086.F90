#define N 256
subroutine init(a,res,f)
  real(kind=2),dimension(1:N) :: a,res
  external f
  real(kind=2) :: f
  do i=1,N
     a(i) = 0._2
     res(i) = f(real(i,kind=2))
  enddo
end subroutine init

subroutine init2(a,res,f,n)
  real(kind=2),dimension(1:n) :: a,res
  integer::n
  external f
  real(kind=2) :: f
  a(:) = 0._2
  do i=1,n
     res(i) = f(real(i,kind=2))
  enddo
end subroutine init2

program main
  real(kind=2),dimension(1:N) :: a,res
  real(kind=4),dimension(1:N) :: r4
  call init(a, res, sub)
  r4 = res
  print *, sum(r4)
  call init2(a, res, sub, N)
  r4 = res
  print *, sum(r4)  
contains
  function sub(r) result(c)
    real(kind=2)::r,c
    c = r + 1.0_2
  end function sub
end program main
