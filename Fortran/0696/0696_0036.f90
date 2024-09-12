subroutine sub(a,b,c,d)
real(8),dimension(1:100) :: a,c
real(8),dimension(1:100,1:100) :: b
real(8),dimension(1:100,1:100,1:100) :: d

do k=1,100
  do j=1,100
    a(j) = a(j) + b(j,k)
    do i=1,100
      c(i) = c(i) + d(i,j,k)
    enddo
  enddo
enddo
end subroutine

program main
integer,parameter :: ians01=10100
integer,parameter :: ians02=1000100
real(8),dimension(1:100) :: a,c
real(8),dimension(1:100,1:100) :: b
real(8),dimension(1:100,1:100,1:100) :: d

a = 1.
b = 1.
c = 1.
d = 1.

call sub(a,b,c,d)

ng_flg = 0
if (int(sum(a)) .ne. ians01) then
  print *,"ng:sum(a)=", int(sum(a)), ians01
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
