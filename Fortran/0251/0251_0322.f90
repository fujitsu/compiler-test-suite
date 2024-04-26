program main
block
integer :: res
procedure(mod),pointer :: ptr
ptr => mod
res = ptr(12,7)
if(res .eq. 5) then
  print*,"pass"
else
  print*,"error"
end if
end block
end program
