integer function foo(n)
foo = n/2
end function

subroutine separateouds(a,b,c,n)
real(kind=8),dimension(1:n,1:n) :: a,b,c
integer foo
do j=2,foo(n)
  do i=2,n
    a(i,j) = a(i,j) + b(i,j)*c(i,j)
  enddo
enddo
end subroutine

program main
integer,parameter :: n=100
real(kind=8),dimension(1:n,1:n) :: a,b,c
real(kind=8),parameter :: answer = 14851._8
real(kind=8),parameter :: diff   =     0.0000001_8
a = 1._8
b = 1._8
c = 1._8
call separateouds(a,b,c,n)
if (abs(sum(a) - answer) .le. diff) then
  print *,"ok"
else
  print *,"ng",sum(a)
endif
end program
