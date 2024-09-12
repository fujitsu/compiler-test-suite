implicit none

interface
  integer(kind=4) function my_fun(arg)
    implicit none
    !$omp declare simd
    integer(kind=4),value:: arg
  end function my_fun
end interface
integer,parameter:: n = 9

integer(kind=4) a(N)
integer(kind=4) b(N)

integer*4 i
do i=1,N
   a(i) = 0
   b(i) = i
end do

block
integer*4 tmp
    !$omp simd
    do i=1,N
!$omp ordered simd
       tmp = b(i)
!$omp end ordered
       a(i) = my_fun(tmp)
    end do
end block

if (a(n).eq.27) then
   print *,"PASS"
else
   print *,"NG", a(n)
endif
end

integer(kind=4) function my_fun(arg)
  implicit none
  !$omp declare simd
  integer(kind=4),value:: arg
  my_fun = arg * 3
end function my_fun
