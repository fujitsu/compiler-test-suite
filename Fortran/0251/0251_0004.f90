integer :: i
i= 3
block
 integer :: j
 block
  integer :: k
 block
  integer :: l
  l=5
  if(l/=5) print*,101
 end block
 block
  integer :: l2
  l2=8
  if(l2/=8) print*,102
 end block
  k=7
  if(k/=7) print*,103
 end block

 j = 2
 if(j/=2) print*,104
end block

if(i/=3) print*,105
print *,'pass'
End

