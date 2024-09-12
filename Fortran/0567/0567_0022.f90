integer ::cc(10)
call sub
contains
subroutine sub
Type ty(k1)
Integer,kind  :: k1
character(kind= k1,len = k1+size(cc)) :: ch
End type
Type(ty(1)) :: obj
if(len(obj%ch) .ne. 11 )print*,"121"
print*,"Pass"
end subroutine
End
