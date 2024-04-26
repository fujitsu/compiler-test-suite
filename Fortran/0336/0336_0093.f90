subroutine sub(val1,val2)
integer(kind=4) val1,val2
integer(kind=4) t
t = val1 - val2
if (2 > 0) then
  print *,"ok"
else
  print *,"ng",t
endif
end subroutine

program main
call sub(2,1)
end program
