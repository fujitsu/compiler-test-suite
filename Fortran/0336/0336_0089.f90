subroutine sub(val1,val2)
real(kind=4) val1,val2
real(kind=4) t
t = val1 - val2
if (t < 0._4) then
  print *,"ok"
else
  print *,"ng"
endif
end subroutine

program main
call sub(1._4,2._4)
end program
