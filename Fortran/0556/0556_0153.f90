program main
 
class(*), pointer :: ptr
class(*), pointer :: ptr_arg

ptr_arg=>NULL() 
ptr=>NULL(ptr_arg)
 
if (ASSOCIATED(ptr_arg)) then
print*, 'ptr_arg is associated'
else
print*, 'ptr_arg is not associated',': pass'
end if
end
