subroutine sub(a1,sum_res,n)
  real*8 a1,sum_res
  integer n , result
  do i = 1,n
    sum_res = sum_res + atan(a1*i)
  end do
  result = INT(sum_res) 
  if (result .eq. 15) then
    write(6,*) "OK"
  else
    write(6,*) "NG"
  endif
end subroutine

program main
real*8 a1, sum_res
a1 = 2.0
sum_res = 1.0
call sub(a1, sum_res, 10)
end
