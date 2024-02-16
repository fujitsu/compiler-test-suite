program main
  real*4 s1(4),s2(4),s4(4)
  integer i
  do i = 1, 4
    s1(i) = i
    s2(i) = i + 1
    s4(i) = i + 4
  enddo
  call sub(s1,s2,s4,i-1);
end program

subroutine sub(s1,s2,s4,n)
  real*4 s1(4),s2(4),s4(4)
  real*4 o1(4),o2(4),o4(4)
  real*4 op1,op2,op4,res
  integer i,n
  do i = 1,4
    op1 = s1(i)
    op2 = s2(i)
    op4 = s4(i)
    res = op1 * op2 - op4
    o1(i) = res
    o2(i) = res + op4
    o4(i) = res + op1
  enddo
  if (o1(n) + o2(n) + o4(n) .eq. 48.0000) then
    write(6,*) "OK"
  else
    write(6,*) "NG"
  endif
end subroutine
