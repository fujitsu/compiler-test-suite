!
subroutine sub(a,b,c,d,e,n,s)
real(kind=8),dimension(1:n) :: a,b,c,d,e
real(kind=8) :: s
do i=1,n
   if (a(i) > 0) then
     s = s + b(i)*c(i)
   else
     s = s - d(i)*e(i)
   endif
enddo
end subroutine

program main
integer,parameter :: n=1000
integer,parameter :: ians=-251
real(kind=8),dimension(1:n) :: a,b,c,d,e
real(kind=8) :: s
s = 0._8
a = (/(real(i-500,kind=8),i=1,n)/)
b = (/(real(mod(i,3),kind=8),i=1,n)/)
c = (/(real(mod(i,2),kind=8),i=1,n)/)
d = (/(real(mod(i,2),kind=8),i=1,n)/)
e = (/(real(mod(i,4),kind=8),i=1,n)/)
call sub(a,b,c,d,e,n,s)
if (int(s,kind=4) == ians) then
   print *,"ok"
else
   print *,"ng",s
endif
end program
