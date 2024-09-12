subroutine APR_fuse_pam(a,b,n,m)
real(8),dimension(1:m) :: a
real(8),dimension(1:n) :: b
do i=1,m
  a(i) = 1
enddo
do i=1,n
  b(i) = 2
enddo
end subroutine APR_fuse_pam

program main
integer,parameter :: n=100,m=100
real(8),dimension(1:m) :: a
real(8),dimension(1:n) :: b
a=0._8
b=0._8
call APR_fuse_pam(a,b,n,m)
if (int(sum(a+b)) == 300) then
   print *,"ok"
else
   print *,"ng",sum(a+b)
endif
end program
