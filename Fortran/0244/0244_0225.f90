call ss(fun())
if(is_contiguous(fun())) print*,101

contains
function fun()
integer,pointer :: fun(:)
integer,target,save :: tgt(10)
tgt=2
tgt(2::2)=0
fun=>tgt(::2)
end function

subroutine ss(dd)
integer :: dd(5)
if(all(dd==2)) print*,'pass'
end subroutine
end
