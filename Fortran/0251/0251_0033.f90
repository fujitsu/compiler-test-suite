select type(aa=>fun())
type is (character(*))
 print*,aa
class default
 print*,101
end select

contains
function fun()
class(*),pointer :: fun
block
save
character(len=4),target :: tgt
tgt='pass'
fun=>tgt
end block
end function
end
