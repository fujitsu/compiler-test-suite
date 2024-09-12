program main
 
integer, target :: tar
class(*), pointer :: ptr
 
ptr=>tar
 
if (ASSOCIATED(ptr)) then
print*, 'ptr is associated ','pass'
else
print*, 'ptr is not associated'
end if
end
