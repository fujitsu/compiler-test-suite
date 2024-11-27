program main
implicit none
integer::x
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
!$omp ordered threads
      foo=x
!$omp end ordered
      end
end
