subroutine sub()
integer,target,save:: tar3=20
integer,pointer :: ptr1
integer,pointer :: ptr2
integer:: tar4(2,2)
integer,parameter:: tar5(2) =[1,2]
data ptr2,tar4(1,tar5),ptr1 /NULL(),1,2,tar3/
if(associated(ptr1).neqv..true.)print*,"101"
if(associated(ptr2).neqv..false.)print*,"102"
if(any(tar4.ne.reshape([1,0,2,0],[2,2])))print*,"103",tar4
print*,"Pass"
end subroutine
call sub()
end
