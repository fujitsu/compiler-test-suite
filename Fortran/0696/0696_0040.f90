subroutine sub(a,b,c,e,x,n)
real(8),dimension(1:n) :: e
real(8),dimension(1:n,1:n) :: a
real(8),dimension(1:n,1:n,1:n) :: b,c
logical,dimension(1:n) :: x

do k=1,100
 do j=1,100
  do i=1,100
    c(i,j,k) = b(i,j,k) + e(i)
    if (x(i)) then
      b(i,j,k) = b(i,j,k) + a(i,j)
    endif
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: n=100
integer,parameter :: ians01=1500000
integer,parameter :: ians02=2000000
logical,dimension(1:n) :: x
real(8),dimension(1:n) :: e
real(8),dimension(1:n,1:n) :: a
real(8),dimension(1:n,1:n,1:n) :: b,c

a = 1.
b = 1.
e = 1.
x(1:50) = .false.
x(51:100) = .true.
call sub(a,b,c,e,x,n)

ng_flg = 0
if (int(sum(b)) .ne. ians01) then
  print *,"ng:sum(b)=", int(sum(b)), ians01
  ng_flg = 1
endif

if (int(sum(c)) .ne. ians02) then
  print *,"ng:sum(c)=", int(sum(c)), ians02
  ng_flg = 1
endif

if (ng_flg .eq. 0) then
  print *,"ok"
endif
end program
