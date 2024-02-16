program main
  real*8 s1(128),s2(128),s3(128)
  integer i
  do i = 1, 128
    s1(i) = i
    s2(i) = i + 1
    s3(i) = i + 3
  enddo
  call sub(s1,s2,s3,i-100);
end program

subroutine sub(s1,s2,s3,n)
  real*8 s1(128),s2(128),s3(128)
  real*8 o1(128),o2(128),o3(128)
  real*8 op1,op2,op3,res
  integer i,n
  do i = 1,128
    op1 = s1(n)
    op2 = s2(n)
    op3 = s3(n)
    res = op1 * op2 + op3
    o1(i) = res
    o2(i) = res + op3
    o3(i) = res + op1
  enddo
  if (o1(n) + o2(n) + o3(n) .eq. 2767.00) then
    write(6,*) "OK"
  else
    write(6,*) "NG"
  endif
end subroutine