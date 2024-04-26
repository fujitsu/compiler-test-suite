call ss(fun())
print*,1,is_contiguous(fun())

contains
function fun()
integer,pointer,contiguous :: fun(:)
integer,target,save :: tgt(5)
tgt=2
fun=>tgt
end function

subroutine ss(dd)
integer :: dd(5)
if(all(dd==2)) print*,'pass'
end subroutine
end
