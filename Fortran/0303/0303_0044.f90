subroutine sub1(a,b,x,y,c,z,flg,n)
real(8),dimension(1:n) :: a,b,x,y,c,z
real(8),dimension(1:n) :: flg

do i=1,n
   if (flg(i) .eq. 0.0) then
      a(i) = b(i) + c(i)
      x(i) = y(i) + z(i)
   endif
enddo

end subroutine

subroutine sub2(a,b,x,y,c,z,aa,flg,n)
real(8),dimension(1:n) :: a,b,x,y,c,z,aa
real(8),dimension(1:n) :: flg

do i=1,n
   if (flg(i) .eq. 0.0) then
      a(i) = b(i) + c(i)
      x(i) = y(i) + z(i)
   endif
   aa(i) = a(i)
enddo

end subroutine

subroutine sub3(a,b,c,d,flg,n)
real(8),dimension(1:n) :: a,b,c,d
real(8),dimension(1:n) :: flg

do i=2,n
   if (flg(i) .eq. 0.0) then
      a(i) = b(i) + c(i)
      d(i) = a(i-1)
   endif
enddo

end subroutine

program main
integer,parameter :: n=10
integer,parameter :: ians=14
real(8),dimension(1:n) :: a,b,x,y,c,z,d,aa
real(8),dimension(1:n) :: flg
integer :: res
a = 0.
b = 1.
c = 1.
x = 0.
y = 1.
z = 1.
aa = 0.
d = 0.
flg(1:n/2) = 0.
flg(n/2:n) = 1.

call sub1(a,b,x,y,c,z,flg,n)
call sub2(a,b,x,y,c,z,aa,flg,n)
call sub3(a,b,c,d,flg,n)

res = int(sum(d)) + int(sum(x))

if (res .eq. ians) then
  print *,"ok"
else
  print *,"ng", res, ians
endif
end program
