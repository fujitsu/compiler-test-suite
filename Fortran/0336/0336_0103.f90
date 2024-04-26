program main
integer(kind=4) val1, val2, val3
integer(kind=4) t
val1 = 2
val2 = 1
t = val1 - val2
val3 = t
if (0 < val3) then
  print *,"ok"
else
  print *,"ng",t
endif
end program
