program main
integer(kind=4) val1,val2,val3
logical(kind=4) t
val1 = 1
val2 = 1
t = val1 .eq. val2
val3 = 0
if (0==val3) then
  print *,"ok"
else
  print *,"ng",t
endif
end program
