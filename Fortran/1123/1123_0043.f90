
real*8 function vadd(a,b)
!$omp declare simd notinbranch
  real*8,intent(in):: a,b
  value::a,b
  vadd = a + b
end function vadd

real*8 function vmul(a,b)
!$omp declare simd inbranch
  real*8,intent(in):: a,b
  value::a,b
  vmul = a * b
end function vmul

program declare_test
  parameter(N=32)
  real*8 a(N),b(N),c(N),d(N), t,tt(1)
  interface
     real*8 function vadd(a,b)
       real*8,intent(in):: a,b
       value::a,b
     end function vadd
     real*8 function vmul(a,b)
       real*8,intent(in):: a,b
       value::a,b
     end function vmul
  end interface

  t = 0
!$omp simd
  do i=1,N
     a(i) = i
     b(i) = 3
     c(i) = 0
     d(i) = 0
  enddo
!$omp simd lastprivate(t)
  do i=1,N
     c(i) = vadd(a(i),b(i))
     if (i.lt.19) then
        d(i) = vmul(a(i),b(i))
     endif
     t = vadd(c(i)-1, d(i))
  enddo
  write(6,1) t
  write(6,1) c
  write(6,1) d

  tt(1) = 0
  c=0
  d=0
!$omp simd lastprivate(tt)
  do i=1,N
     c(i) = vadd(a(i),b(i))
     if (i.gt.19) then
        d(i) = vmul(a(i),b(i)) + c(i)
     endif
     tt(1) = vadd(c(i), -d(i))
  enddo
  write(6,*)
  write(6,1) d
  write(6,*) tt
  1 format(8f10.3)
end program declare_test
