
program main
  real *8 c,cp,xx
  parameter (cp=z'3FFFFFFF FFFFFFFF')
  c = cp
  write(3,*) c
  call sub(cp)
print *,'pass'
end program main

subroutine sub(x)
  real*8 a,b,c,d,x,ary(1)
  a = x
  b = 1.5
  write(3,*)a
  write(3,*)b
end subroutine sub
