subroutine foo(i, imax)
integer(kind=4) i, a, b
a = imax
b = imax
if (i .ge. a) then
  if (i .ne. a) then
    b = i - a
  endif
endif

imax = a - b
end subroutine

program main
itest = 4
imax = 2
call foo(itest,imax)
if (imax == 0) then
  print *,"ok"
else
  print *,"ng: ",imax
endif
end program
