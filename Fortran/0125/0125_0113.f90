subroutine sub(a,b,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,n,k)
real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c1,c2,c3,c4,c5,c6,c7,c8,c9,c10
do i=1,n,k
  a(c1(c2(c3(c4(c5(c6(c7(c8(c9(c10(i))))))))))) =    &
   a(c1(c2(c3(c4(c5(c6(c7(c8(c9(c10(i))))))))))) +   &
   b(c1(c2(c3(c4(c5(c6(c7(c8(c9(c10(i)))))))))))     
enddo
end subroutine

program main
integer,parameter :: n=10000
integer,parameter :: ians=10100

real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c1,c2,c3,c4,c5,c6,c7,c8,c9,c10

a = 1.
b = 2.
c1 = (/(i,i=1,n)/)
c2 = (/(i,i=n,1,-1)/)
c3 = (/(i,i=1,n)/)
c4 = (/(i,i=n,1,-1)/)
c5 = (/(i,i=1,n)/)
c6 = (/(i,i=n,1,-1)/)
c7 = (/(i,i=1,n)/)
c8 = (/(i,i=n,1,-1)/)
c9 = (/(i,i=1,n)/)
c10 = (/(i,i=n,1,-1)/)

call sub(a,b,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,n,200)

if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng:sub", " result =", int(sum(a)),"master =", ians
endif

end program
