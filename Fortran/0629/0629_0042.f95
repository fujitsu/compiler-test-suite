program main
implicit integer(a-z)
real*8 c(10000000),d(10000000)

!$omp do firstprivate(b) lastprivate(b)
do a = 1,10000000
   d(a)=a
end do

!$omp do firstprivate(b) lastprivate(b) schedule(dynamic)
do b = 1,10000000
   c(b)=b
end do
write(*,*)c(1),d(1)

end program main
