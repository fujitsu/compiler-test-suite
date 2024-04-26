if( ss(fun()) /=1) print*,'fail'
print*,1,is_contiguous(fun())

contains
function fun()
integer,pointer,contiguous :: fun(:)
integer,target,save :: tgt(5)
tgt=2
fun=>tgt
end function

function ss(dd)
integer :: dd(5),ss
if(all(dd==2)) print*,'pass'
ss=1
end function 
end
