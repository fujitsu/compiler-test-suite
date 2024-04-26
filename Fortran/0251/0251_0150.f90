integer :: a = 2
if(fun(a) == 1) print*,'pass'

contains
function fun(d)
integer :: d,fun
block
 integer :: j(d)
 block
 integer :: k(d)
 block
  integer :: l(d)
  l=5
  if(any(l/=5)) print*,104
  if(size(l)/=2) print*,204
 end block
 block
  integer :: l2(d)
  l2=8
  if(any(l2/=8)) print*,103
  if(size(l2)/=2) print*,203
 end block
  k=7
  if(any(k/=7)) print*,102
  if(size(k)/=2) print*,202
 end block

 j = 2
 if(any(j/=2)) print*,101
  if(size(j)/=2) print*,201

fun=1
end block
end function
End

