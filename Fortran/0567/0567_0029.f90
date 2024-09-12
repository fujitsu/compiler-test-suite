Type ty(k1,k2,k3)
 Integer,kind  :: k1,k2,k3
 character(kind= k1,len = 3),allocatable :: ch2
End type
Type(ty(4,4,8)):: obj

        allocate(obj%ch2)
call sub(obj%ch2)

contains 
subroutine sub(xx)
        character(kind=4,len =*) :: xx
        character(kind=4,len =3) :: xy = "ABC"
        xx = xy
print*,'PASS'
if(len(obj%ch2) .ne. 3) print*,101
if(kind(obj%ch2) .ne. 4) print*,102
if(xx .ne. xy) print*,103
end subroutine sub
End

