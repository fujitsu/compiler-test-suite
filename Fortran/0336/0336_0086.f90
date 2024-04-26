program main
integer(kind=4) val1,val2
logical(kind=4) t
val1 = 1
val2 = 1
t = val1 .eq. val2
if (t) then
  print *,"ok"
else
  print *,"ng"
endif
end program
