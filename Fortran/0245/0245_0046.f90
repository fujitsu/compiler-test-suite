integer :: arr=2
integer :: arr2(4)=2

call sub(arr,arr,arr,arr2,arr2)
if(fun(arr,arr,arr,arr2,arr2)/=1)print*,101

contains
subroutine sub(d1,d2,d3,d4,d5)
integer :: d1
integer,volatile :: d2
integer :: d3
integer,asynchronous :: d4(:)
integer,volatile :: d5(:)
print*,d1,d2,d3,d4,d5
end subroutine

function fun(d1,d2,d3,d4,d5)
integer :: d1,fun
integer,volatile :: d2
integer :: d3
integer,asynchronous :: d4(:)
integer,volatile :: d5(:)
print*,d1,d2,d3,d4,d5
fun=1
end function 
end
