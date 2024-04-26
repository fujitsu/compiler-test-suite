print*,fun()
contains
function fun()
character(len=:),pointer :: fun
block
save
character(len=4),target :: tgt
tgt='pass'
fun=>tgt
end block
end function
end
