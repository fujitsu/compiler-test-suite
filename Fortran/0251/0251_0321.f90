program main

block 
real :: res
procedure(dim),pointer :: ptr
ptr => dim
res = ptr(2.2,1.1)
if(res .eq. 1.1) then
  print*,"pass"
else
  print*,"error"
end if
end block

end program
