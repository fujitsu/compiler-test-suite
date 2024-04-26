module m1

contains
subroutine ss

call xx
call zz

contains
subroutine xx
block
 integer :: j
 block
 integer :: k
 block
  integer :: l
  l=5
  if(l/=5) print*,204
 end block
 block
  integer :: l2
  l2=8
  if(l2/=8) print*,203
 end block
  k=7
  if(k/=7) print*,202
 end block

 j = 2
 if(j/=2) print*,201
end block
end subroutine xx

subroutine zz
block
 integer :: j
 block
 integer :: k
 block
  integer :: l
  l=5
  if(l/=5) print*,104
 end block
 block
  integer :: l2
  l2=8
  if(l2/=8) print*,103
 end block
  k=7
  if(k/=7) print*,102
 end block

 j = 2
 if(j/=2) print*,101
 print*,'pass'
end block
end subroutine zz
end subroutine ss
End module

use m1
call ss
end

