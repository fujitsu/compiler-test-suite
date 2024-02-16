subroutine sub1(a1,b1,a2,b2,a3,b3,a4,b4,n,k,c)
real(8),dimension(1:n) :: a1,b1,a2,b2,a3,b3,a4,b4
integer,dimension(1:n) :: c
integer :: k,i

i=1 
do while (i<=n)
   a1(i) = a1(i) + b1(i)
   i=i+1
enddo

i=1 
do while (i<=n)
   a2(i) = a2(i) + b2(i)
   i=i+100
enddo

i=1 
do while (i<=n)
   a3(i) = a3(i) + b3(i)
   i=i+k
enddo

i=1 
do while (i<=n)
   a4(c(i)) = a4(c(i)) + b4(c(i))
   i=i+k
enddo

end subroutine

program main
integer,parameter :: n=1000
integer,parameter :: ians=5210
real(8),dimension(1:n) :: a1,b1,a2,b2,a3,b3,a4,b4
integer,dimension(1:n) :: c
integer :: result

a1=1.
a2=1.
a3=1.
a4=1.
b1=1.
b2=1.
b3=1.
b4=1.
c = (/(i,i=1,n)/)

call sub1(a1,b1,a2,b2,a3,b3,a4,b4,n,10,c)
result = sum(a1)+sum(a2)+sum(a3)+sum(a4)
if (result .eq. ians) then
  print *,"ok"
else
  print *,"ng", result, ians
endif
end program
