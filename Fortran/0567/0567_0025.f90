 call sub
 contains
 subroutine sub
 Type ty(k1)
 Integer,kind  :: k1
 character(kind= k1,len = 10) :: ch
 End type
 Type(ty(1)) :: obj
 if(len(obj%ch) .ne. 10) print*,"121",len(obj%ch)
print*,"pass"
end subroutine
End

