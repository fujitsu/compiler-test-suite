call ss(4)

contains
subroutine ss(d)
integer :: d
print*,'within subroutine'

 block
  print*,'in block 1'
  var=d/2
 end block

print*,'middle'

 block
  print*,'in block 2'
  var=var+d
 end block

if(var==6) then
 print*,'pass'
else
 print*,'fail'
endif
end subroutine
end
