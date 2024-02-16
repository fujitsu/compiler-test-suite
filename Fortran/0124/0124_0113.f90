subroutine func_ge(i, imax)
integer(kind=2) i,imax
if (i .ge. imax) then
  imax = i - imax
endif
end subroutine

subroutine func_gt(i, imax)
integer(kind=2) i,imax
if (i .gt. imax) then
  imax = i - imax
endif
end subroutine

subroutine func_le(i, imax)
integer(kind=2) i,imax
if (i .le. imax) then
  imax = i - imax
endif
end subroutine

subroutine func_lt(i, imax)
integer(kind=2) i,imax
if (i .lt. imax) then
  imax = i - imax
endif
end subroutine

subroutine func_eq(i, imax)
integer(kind=2) i,imax
if (i .eq. imax) then
  imax = i - imax
endif
end subroutine

subroutine func_ne(i, imax)
integer(kind=2) i,imax
if (i .ne. imax) then
  imax = i - imax
endif
end subroutine

module maxmin_value
integer(kind=1),parameter :: i1_max = 127_1
integer(kind=1),parameter :: i1_min = -127_1
integer(kind=2),parameter :: i2_max = 32767_2
integer(kind=2),parameter :: i2_min = -32767_2
integer(kind=4),parameter :: i4_max = 2147483647_4
integer(kind=4),parameter :: i4_min = -2147483647_4
end module

integer(kind=2) function itest_func_ge()
use maxmin_value
integer(kind=2) imax, itest
itest = 0

imax = i2_max
call func_ge(i2_min, imax)
itest = itest + imax

imax = i2_min
call func_ge(i2_max, imax)
itest = itest + imax

itest_func_ge = itest
end function

integer(kind=2) function itest_func_gt()
use maxmin_value
integer(kind=2) imax, itest
itest = 0

imax = i2_max
call func_gt(i2_min, imax)
itest = itest + imax

imax = i2_min
call func_gt(i2_max, imax)
itest = itest + imax

itest_func_gt = itest
end function

integer(kind=2) function itest_func_le()
use maxmin_value
integer(kind=2) imax, itest
itest = 0

imax = i2_max
call func_le(i2_min, imax)
itest = itest + imax

imax = i2_min
call func_le(i2_max, imax)
itest = itest + imax

itest_func_le = itest
end function

integer(kind=2) function itest_func_lt()
use maxmin_value
integer(kind=2) imax, itest
itest = 0

imax = i2_max
call func_lt(i2_min, imax)
itest = itest + imax

imax = i2_min
call func_lt(i2_max, imax)
itest = itest + imax

itest_func_lt = itest
end function

integer(kind=2) function itest_func_eq()
use maxmin_value
integer(kind=2) imax, itest
itest = 0

imax = i2_max
call func_eq(i2_min, imax)
itest = itest + imax

imax = i2_min
call func_eq(i2_max, imax)
itest = itest + imax

itest_func_eq = itest
end function

integer(kind=2) function itest_func_ne()
use maxmin_value
integer(kind=2) imax, itest
itest = 0

imax = i2_max
call func_ne(i2_min, imax)
itest = itest + imax

imax = i2_min
call func_ne(i2_max, imax)
itest = itest + imax

itest_func_ne = itest
end function

program main
integer(kind=2) itest
integer(kind=2) itest_func_ge
integer(kind=2) itest_func_gt
integer(kind=2) itest_func_le
integer(kind=2) itest_func_lt
integer(kind=2) itest_func_eq
integer(kind=2) itest_func_ne
itest = 0
itest = itest + itest_func_ge()
itest = itest + itest_func_gt()
itest = itest + itest_func_le()
itest = itest + itest_func_lt()
itest = itest + itest_func_eq()
itest = itest + itest_func_ne()
if (itest == 0) then
  print *,"ok"
else
  print *,"ng: ",itest
endif
end program
