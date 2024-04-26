print*,fun2(fun())
contains
function fun()
character(len=:),pointer :: fun
block
save
character(len=4),allocatable,target :: tgt
allocate(tgt)
tgt='pass'
fun=>tgt
end block
end function

function fun2(dd)
character(len=*) :: dd
character(len=4) :: fun2
fun2=dd
end function
end
