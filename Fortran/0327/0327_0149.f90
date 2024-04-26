 module xdef
 real :: a,b,r
 end module

 use xdef
 a=10
 b=20
 call swap(a,b,r)
 print *,'pass'
 end

 subroutine swap(aa,bb,rr)
 use xdef
 real :: aa,bb,rr
 r=b
 bb=a
 aa=rr
 end
