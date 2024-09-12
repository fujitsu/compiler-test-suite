subroutine sub()
integer,target,save:: tar3
integer,pointer :: ptr1
integer:: tar4(5)
integer,parameter:: tar5(3) =[1,3,5]
data tar4(tar5),tar3,ptr1 /11,13,15,16,tar3/
if(any(tar4.ne.[11, 0, 13, 0, 15]))print*,"101"
if(associated(ptr1).neqv..true.)print*,"101",associated(ptr1)
print*,"Pass"
end subroutine
call sub()
end
