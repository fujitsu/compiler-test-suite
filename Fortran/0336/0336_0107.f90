program main
real(kind=4) val1, val2, val3
real(kind=4) t
val1 = 1._4
val2 = 2._4
t = val1 - val2
val3 = -1._4
if (0._4 > val3) then
  print *,"ok"
else
  print *,"ng",t
endif
end program
