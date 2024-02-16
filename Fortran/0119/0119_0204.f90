subroutine sub(a1,sum_res,n)
  real*8 a1,sum_res,n
  integer result
  sum_res = sum_res + atan(a1*n)
  result = INT(sum_res) 
  if (result .eq. 2) then
    write(6,*), "OK"
  else
    write(6,*), "NG"
  endif
end subroutine

program main
real*8 a1, sum_res,n
a1 = 2.0
sum_res = 1.0
n = 2.5
call sub(a1, sum_res, n)
end
