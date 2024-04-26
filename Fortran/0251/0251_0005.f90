integer :: i
i= 3
block
 integer :: i
 block
  integer :: i
  i=7
 block
  integer :: i
  i=5
  if(i/=5) print*,103
 end block
  if(i/=7) print*,102
 end block

 i = 2
 if(i/=2) print*,101
end block

if(i/=3) print*,100
print *,'pass'
End

