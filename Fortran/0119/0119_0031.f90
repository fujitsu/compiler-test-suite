program main
  real*4 s1(5),s2(5),s3(5)
  integer i
  do i = 1, 5
    s1(i) = i
    s2(i) = i + 1
    s3(i) = i + 3
  enddo
  call sub(s1,s2,s3,i-1);
end program

subroutine sub(s1,s2,s3,n)
  real*4 s1(5),s2(5),s3(5)
  real*4 o1(5),o2(5),o3(5)
  real*4 op1,op2,op3,res
  integer i,n
  do i = 1,5
    op1 = s1(i)
    op2 = s2(i)
    op3 = s3(i)
    res = -op1 * op2 - op3
    o1(i) = res
    o2(i) = res + op3
    o3(i) = res + op1
  enddo
  if (o1(n) + o2(n) + o3(n) .eq. -101.0000) then
    write(6,*) "OK"
  else
    write(6,*) "NG"
  endif
end subroutine
