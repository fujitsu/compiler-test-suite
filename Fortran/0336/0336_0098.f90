program main
real(kind=4) val1,val2
logical(kind=4) t
val1 = 1._4
val2 = 2._4
t = val1 .ne. val2
if (0._4 == 0._4) then
  print *,"ok"
else
  print *,"ng",t
endif
end program
