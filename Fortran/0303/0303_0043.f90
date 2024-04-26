subroutine sub1(a,c,aaa,cc,n)
real(8),dimension(1:n) :: a,aaa
integer,dimension(1:n) :: c
integer :: jl
real(8) :: ze,cc

do i=1,n
   jl = c(i)
   ze = aaa(jl) +1

   if (ze .eq. cc) then
      a(jl) = ze
   endif
enddo

end subroutine

program main
integer,parameter :: n=10
integer,parameter :: ians=5
real(8),dimension(1:n) :: a,aaa
integer,dimension(1:n) :: c
integer :: res
real(8) :: cc

a = 0.
c = (/(i,i=1,n)/)
aaa = (/(i,i=1,n)/)
cc = 5.
 
call sub1(a,c,aaa,cc,n)

res = int(sum(a))

if (res .eq. ians) then
  print *,"ok"
else
  print *,"ng", res, ians
endif
end program
