   character(len=5) , allocatable :: ch1(:)
   character(len=10) , allocatable:: ch2
   character(5)  :: ch3(2)
   character(4)  :: ch4(2)
   character  :: c
allocate(ch1,ch2,mold=ch3,stat=k)
allocate(ch1,ch2,mold=ch4,errmsg=c)
print*,k,c
end
