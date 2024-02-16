subroutine sub01(a,b,e,f,g,n,k)
real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: e,f,g
do i=1,n,k
  a(e(f(g(i)))) = a(e(f(g(i)))) + b(e(f(g(i))))
enddo
end subroutine

subroutine sub02(a,b,c,d,e,f,g,n,k)
real(8),dimension(1:n) :: a,b,c,d
integer,dimension(1:n) :: e,f,g
do i=1,n,k
  a(e(f(g(i)))) = a(e(f(g(i)))) + b(e(f(i))) + c(e(i)) + d(i)
enddo
end subroutine

program main
integer,parameter :: n=10000
integer,parameter :: ians01=12000
integer,parameter :: ians02=19000

real(8),dimension(1:n) :: a,b
real(8),dimension(1:n) :: a2,b2,c2,d2
integer,dimension(1:n) :: e,f,g
integer :: ng_flg,result01,result02

a = 1.
b = 2.
a2 = 1.
b2 = 2.
c2 = 3.
d2 = 4.

e = (/(i,i=1,n)/)
f = (/(i,i=1,n)/)
g = (/(i,i=1,n)/)

call sub01(a,b,e,f,g,n,10)
call sub02(a2,b2,c2,d2,e,f,g,n,10)

result01 = int(sum(a))
result02 = int(sum(a2)) 

ng_flg = 0
if (result01 .ne. ians01) then
  print *,"ng:sub01", " result =", result01,"master =", ians01
  ng_flg = 1
endif

if (result02 .ne. ians02) then
  print *,"ng:sub02", " result =", result02,"master =", ians02
  ng_flg = 1
endif

if (ng_flg .eq. 0) then
  print *,"ok"
endif

end program
