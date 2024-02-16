program main
  real*4 s1(3),s2(3),s3(3)
  integer i
  do i = 1, 3
    s1(i) = i
    s2(i) = i + 1
    s3(i) = i + 3
  enddo
  call sub(s1,s2,s3,i-1);
end program

subroutine sub(s1,s2,s3,n)
  real*4 s1(3),s2(3),s3(3)
  real*4 o1(3),o2(3),o3(3)
  real*4 op1,op2,op3,res
  integer i,n
  do i = 1,3
    op1 = s1(i)
    op2 = s2(i)
    op3 = s3(i)
    res = -op1 * op2 + op3
    o1(i) = res
    o2(i) = res + op3
    o3(i) = res + op1
  enddo
  if (o1(n) + o2(n) + o3(n) .eq. -9.0000) then
    write(6,*) "OK"
  else
    write(6,*) "NG"
  endif
end subroutine
