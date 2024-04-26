subroutine sub(val1,val2)
real(kind=4) val1,val2,val3
real(kind=4) t
t = val1 - val2
val3 = -1._4
if (0._4 > val3) then
  print *,"ok"
else
  print *,"ng",t
endif
end subroutine

program main
call sub(1._4,2._4)
end program
