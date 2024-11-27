program main
implicit none
integer::x=0
x=foo(100)
if(x==100) then
  print *, 'pass'
else
  print *, 'x=',x
endif
contains
      function foo(x)
!$omp declare simd
      integer foo
      integer,value::x
!$omp ordered simd
      foo=x
!$omp end ordered
      end
end
