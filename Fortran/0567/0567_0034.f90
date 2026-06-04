Type ty(k1,k2,k3)
 Integer,kind  :: k1,k2,k3
character(kind= (k3-k1)-k1,len = 4) :: ch
character(kind= k2,len = 8) :: ch1(k1+k3-k2)
character(kind= (k3*k1)/k2,len = k1+k2+k3) :: ch2(k2*k1,k3)
End type
Type(ty(2,4,8)):: obj
    
if(kind(obj%ch) .ne. 4)print*,101
if(kind(obj%ch1) .ne. 4)print*,102
if(kind(obj%ch2) .ne. 4)print*,103
if(len(obj%ch) .ne. 4)print*,104
if(len(obj%ch1) .ne. 8)print*,105
if(len(obj%ch2) .ne. 14)print*,106,len(obj%ch2)
if(sizeof(obj%ch) .ne. 16)print*,107,sizeof(obj%ch)
if(sizeof(obj%ch1) .ne. 192)print*,108,sizeof(obj%ch1)
if(sizeof(obj%ch2) .ne. 3584)print*,109,sizeof(obj%ch2)
if(size(obj%ch1) .ne. 6)print*,110
if(size(obj%ch2) .ne. 64)print*,111
if(ubound(obj%ch1,1) .ne. 6)print*,112
if(lbound(obj%ch1,1) .ne. 1)print*,113
if(ubound(obj%ch2,2) .ne. 8)print*,114
if(lbound(obj%ch1,1) .ne. 1)print*,115
print*,'PASS'
End

