subroutine sub(val1,val2)
integer(kind=4) val1,val2,val3
logical(kind=4) t
t = val1 .eq. val2
val3 = 0
if (0==val3) then
  print *,"ok"
else
  print *,"ng",t
endif
end subroutine

program main
call sub(1,1)
end program
