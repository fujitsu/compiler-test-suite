module ad01
  INTEGER, PARAMETER :: WP = KIND(0D0)
  REAL (WP), PARAMETER :: D0 = 0.0_WP, D1 = 1.0_WP, D2 = 2.0_WP
  TYPE NODE
    REAL (WP) RVAL
    REAL (WP) RVALS(0:1)
    INTEGER ONUM
    INTEGER IPTRS(0:1)
  END TYPE NODE
end module ad01

program main
   use ad01
   integer, parameter :: size=1000000
   integer i,j
   real t1,t2,t3
   type(NODE) :: a(size)
   call cpu_time(t1)
   k = 0
   do i = 1, size/2
      j = i + 1
      a(i) = node(D0,(/D1+i,D2/),1,(/k,j/))
      k = i - 1
   end do
   call cpu_time(t2)
   do i = 1+size/2, size
      j = i + 1
      a(i)%RVAL = D0
      a(i)%RVALS(0) = D1+i
      a(i)%RVALS(1) = D2
      a(i)%ONUM = 1
      a(i)%IPTRS(0) = k
      a(i)%IPTRS(1) = j
      k = i - 1
   end do
   call cpu_time(t3)
   write(1,*) t2-t1, t3-t2, sum(a(:)%RVALS(0))
   print *,'pass'
end program main
