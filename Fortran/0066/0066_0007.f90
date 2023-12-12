!
subroutine sub(a,b,c,n,s,nn)
real(kind=8),dimension(1:n) :: a,b,c
real(kind=8) :: s
do i=1,nn
   if ((a(i) >= 0.0 .and. s >= 0.0) .or. (b(i) >= 0.0 .and. s >= 100.0)) then
     s = s + b(i)*c(i)
   endif
enddo
end subroutine

program main
integer,parameter :: n=1000
integer,parameter :: ians=2
real(kind=8),dimension(1:n) :: a,b,c
real(kind=8) :: s
s = 0._8
a = (/(real(i,kind=8),i=1,n)/)
b = (/(real(mod(i+1,3),kind=8),i=1,n)/)
c = (/(real(mod(i,2),kind=8),i=1,n)/)
call sub(a,b,c,n,s,1)
if (int(s,kind=4) == ians) then
   print *,"ok"
else
   print *,"ng",s
endif
end program
