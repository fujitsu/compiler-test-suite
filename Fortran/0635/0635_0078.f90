subroutine separateouds(a,b,c,n,mask)
real(kind=8),dimension(1:n,1:n) :: a,b,c
logical(kind=8),dimension(1:n) :: mask
do j=2,n
  if (mask(j)) then
    do i=2,n
      a(i,j) = a(i,j) + b(i,j)*c(i,j)
    enddo
  endif
enddo
end subroutine

program main
integer,parameter :: n=100
real(kind=8),dimension(1:n,1:n) :: a,b,c
real(kind=8),parameter :: answer = 19801._8
real(kind=8),parameter :: diff   =     0.0000001_8
logical(kind=8),dimension(1:n) :: mask
a = 1._8
b = 1._8
c = 1._8
mask = .true.
call separateouds(a,b,c,n,mask)
if (abs(sum(a) - answer) .le. diff) then
  print *,"ok"
else
  print *,"ng",sum(a)
endif
end program