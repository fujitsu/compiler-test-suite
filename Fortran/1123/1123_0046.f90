
real*8 function vadd(a,b)
  !$omp declare simd inbranch
  real*8,intent(in):: a,b
  real*8 t/0/
  value::a,b
  vadd = a + b
end function vadd

write(6,*) "jwd5403i-i"
end
