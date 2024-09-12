Type ty(k1,k2,k3)
 Integer,kind  :: k1,k2,k3
 character(kind= k1,len = :),allocatable :: ch2
End type
Type(ty(4,4,8)):: obj
allocate(character(kind=4,len = 3)::obj%ch2)    
if(len(obj%ch2) .ne. 3) print*,101
if(kind(obj%ch2) .ne. 4) print*,102
print*,'PASS'
End

