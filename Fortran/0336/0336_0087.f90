program main
integer(kind=4) val1, val2
integer(kind=4) t
val1 = 2
val2 = 1
t = val1 - val2
if (t > 0) then
  print *,"ok"
else
  print *,"ng"
endif
end program
