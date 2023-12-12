!
subroutine sub(a,b,c,n,s)
real(kind=8),dimension(1:n) :: a,b,c
real(kind=8) :: s
do i=1,n-1
   if (a(i) > 0.0) then
     s = s + b(i)*c(i)
     if (a(i) > 2.0) then
        s = s + (b(i)+c(i))
        if (a(i) > 10.0) then
           s = s - (b(i)*c(i))
           if (a(i) > 100.0) then
              s = s - (b(i)+c(i))
           else
              s = s + a(i)
           endif
           a(i+1) = a(i+1) + 100.0
        else
           s = s - 4.0
        endif
     else
        s = s * 2.0
     endif
  else
     s = s + 1.0
  endif
enddo
end subroutine

program main
integer,parameter :: n=1000
integer,parameter :: ians=5
real(kind=8),dimension(1:n) :: a,b,c
real(kind=8) :: s
s = 0._8
a = (/(real(i,kind=8),i=1,n)/)
b = (/(real(mod(i+1,3),kind=8),i=1,n)/)
c = (/(real(mod(i,2),kind=8),i=1,n)/)
call sub(a,b,c,n,s)
if (int(s,kind=4) == ians) then
   print *,"ok"
else
   print *,"ng",s
endif
end program
