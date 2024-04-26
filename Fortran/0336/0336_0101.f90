subroutine sub(val1,val2)
integer(kind=4) val1,val2,val3
integer(kind=4) t
t = val1 - val2
val3 = 2
if (0 < val3) then
  print *,"ok"
else
  print *,"ng",t
endif
end subroutine

program main
call sub(2,1)
end program
