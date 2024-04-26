integer :: act = 2
if(fun(act)==1) print*,'pass'

contains
function fun(d)
integer::fun,d
integer :: i
i= 3
if(i/=3 .or. d/=2) print*,103
d=i+d
block
 integer :: arr(d)
 block
  integer :: arr(d)
  arr=i+2
  if(any(arr/=5)) print*,101
  if(size(arr)/=5) print*,104
  print*,arr
 end block
 arr=i+2
 if(any(arr/=5)) print*,105
 if(size(arr)/=5) print*,106
 print*,arr
end block

fun=1
end function
End

