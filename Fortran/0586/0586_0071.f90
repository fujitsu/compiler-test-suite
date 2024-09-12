subroutine sub()
integer,target,save:: tar3 =20
integer,pointer :: ptr1
integer,pointer :: ptr2
integer:: tar4(3,4)
integer:: tar5(3,4)
logical::l1
logical::l2
logical::l3(3)
data l1, tar4(2,1:4:1),ptr1 /.true.,1,2,3,4,tar3/
data l2,tar5(2,1:4:1),ptr2,l3 /.true.,4*1,tar3,.true.,.false.,.true./
if(any(tar4.ne.reshape([0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0],[3,4])))print*,"102"
if(any(tar5.ne.reshape([0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0],[3,4])))print*,"103"
if(any(l3.neqv.[.true.,.false.,.true.]))print*,"201"
if(l1.neqv..true.)print*,"301"
if(l2.neqv..true.)print*,"401"
if(associated(ptr1).neqv..true.)print*,"106"
if(associated(ptr2).neqv..true.)print*,"107"
print*,"Pass"
end subroutine
call sub()
end
