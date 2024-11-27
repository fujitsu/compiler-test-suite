type ty
   character(len=5) , pointer :: ch1(:)
   character(len=10) , pointer :: ch2
end type

   character(5)  :: ch3(2)
   character(4)  :: ch4(2)
type(ty) :: obj
integer ::   k
character :: ch
allocate(obj%ch1,obj%ch2,mold=ch3,stat=k)
allocate(obj%ch1,obj%ch2,mold=ch4,errmsg=ch)
print*,k,ch
end
