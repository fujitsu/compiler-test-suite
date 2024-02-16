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

integer(kind=2) function itest_func_ge()
integer(kind=2) imax, itest
itest = 0

imax = -1
call func_ge(-1_2, imax)
itest = itest + imax

imax = -1
call func_ge(0_2, imax)
itest = itest + imax

imax = -1
call func_ge(1_2, imax)
itest = itest + imax

imax = 0
call func_ge(-1_2, imax)
itest = itest + imax

imax = 0
call func_ge(0_2, imax)
itest = itest + imax

imax = 0
call func_ge(1_2, imax)
itest = itest + imax

imax = 1
call func_ge(-1_2, imax)
itest = itest + imax

imax = 1
call func_ge(0_2, imax)
itest = itest + imax

imax = 1
call func_ge(1_2, imax)
itest = itest + imax

itest_func_ge = itest
end function

integer(kind=2) function itest_func_gt()
integer(kind=2) imax, itest
itest = 0

imax = -1
call func_gt(-1_2, imax)
itest = itest + imax

imax = -1
call func_gt(0_2, imax)
itest = itest + imax

imax = -1
call func_gt(1_2, imax)
itest = itest + imax

imax = 0
call func_gt(-1_2, imax)
itest = itest + imax

imax = 0
call func_gt(0_2, imax)
itest = itest + imax

imax = 0
call func_gt(1_2, imax)
itest = itest + imax

imax = 1
call func_gt(-1_2, imax)
itest = itest + imax

imax = 1
call func_gt(0_2, imax)
itest = itest + imax

imax = 1
call func_gt(1_2, imax)
itest = itest + imax

itest_func_gt = itest
end function

integer(kind=2) function itest_func_le()
integer(kind=2) imax, itest
itest = 0

imax = -1
call func_le(-1_2, imax)
itest = itest + imax

imax = -1
call func_le(0_2, imax)
itest = itest + imax

imax = -1
call func_le(1_2, imax)
itest = itest + imax

imax = 0
call func_le(-1_2, imax)
itest = itest + imax

imax = 0
call func_le(0_2, imax)
itest = itest + imax

imax = 0
call func_le(1_2, imax)
itest = itest + imax

imax = 1
call func_le(-1_2, imax)
itest = itest + imax

imax = 1
call func_le(0_2, imax)
itest = itest + imax

imax = 1
call func_le(1_2, imax)
itest = itest + imax

itest_func_le = itest
end function

integer(kind=2) function itest_func_lt()
integer(kind=2) imax, itest
itest = 0

imax = -1
call func_lt(-1_2, imax)
itest = itest + imax

imax = -1
call func_lt(0_2, imax)
itest = itest + imax

imax = -1
call func_lt(1_2, imax)
itest = itest + imax

imax = 0
call func_lt(-1_2, imax)
itest = itest + imax

imax = 0
call func_lt(0_2, imax)
itest = itest + imax

imax = 0
call func_lt(1_2, imax)
itest = itest + imax

imax = 1
call func_lt(-1_2, imax)
itest = itest + imax

imax = 1
call func_lt(0_2, imax)
itest = itest + imax

imax = 1
call func_lt(1_2, imax)
itest = itest + imax

itest_func_lt = itest
end function

integer(kind=2) function itest_func_eq()
integer(kind=2) imax, itest
itest = 0

imax = -1
call func_eq(-1_2, imax)
itest = itest + imax

imax = -1
call func_eq(0_2, imax)
itest = itest + imax

imax = -1
call func_eq(1_2, imax)
itest = itest + imax

imax = 0
call func_eq(-1_2, imax)
itest = itest + imax

imax = 0
call func_eq(0_2, imax)
itest = itest + imax

imax = 0
call func_eq(1_2, imax)
itest = itest + imax

imax = 1
call func_eq(-1_2, imax)
itest = itest + imax

imax = 1
call func_eq(0_2, imax)
itest = itest + imax

imax = 1
call func_eq(1_2, imax)
itest = itest + imax

itest_func_eq = itest
end function

integer(kind=2) function itest_func_ne()
integer(kind=2) imax, itest
itest = 0

imax = -1
call func_ne(-1_2, imax)
itest = itest + imax

imax = -1
call func_ne(0_2, imax)
itest = itest + imax

imax = -1
call func_ne(1_2, imax)
itest = itest + imax

imax = 0
call func_ne(-1_2, imax)
itest = itest + imax

imax = 0
call func_ne(0_2, imax)
itest = itest + imax

imax = 0
call func_ne(1_2, imax)
itest = itest + imax

imax = 1
call func_ne(-1_2, imax)
itest = itest + imax

imax = 1
call func_ne(0_2, imax)
itest = itest + imax

imax = 1
call func_ne(1_2, imax)
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
