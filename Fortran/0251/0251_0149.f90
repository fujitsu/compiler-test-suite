integer :: act = 2
if(fun(act)==1) print*,'pass'

contains
function fun(d)
integer::fun,d
integer :: i
i= 3
if(i/=3 .or. d/=2) print*,103
d=i+d
a:block
 integer :: arr(d)
 if(d/=5) print*,201
 if(size(arr)/=5) print*,108,size(arr),'it should be 5'
 d=i+i
 if(size(arr)/=5) print*,107,size(arr),'it should be 5'
 b:block
  integer :: brr(d)
  brr=i+2
  if(d/=6) print*,109
  if(any(brr/=5)) print*,101
  if(size(brr)/=6) print*,104,size(brr),'it should be 6'
  print*,brr
 end block b
 arr=i+5
 if(any(arr/=8)) print*,105
 if(size(arr)/=5) print*,106,size(arr),'it should be 5'
 print*,arr
end block a

fun=1
end function
End

