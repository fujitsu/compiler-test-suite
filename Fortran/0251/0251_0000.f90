integer :: i
i= 3
block
 integer :: i
 block
  integer :: i
  i=7
  if(i/=7) print*,101,'inner block'
  print*,i
 end block

 i = 2
 if(i/=2) print*,102,'outer block'
print*,i
end block

if(i/=3) print*,103,'main'
print*,i,'pass'
End

