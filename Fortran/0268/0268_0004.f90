integer,target :: t1=20
type ty1
integer ,pointer :: p1 =>NULL()
integer ,pointer :: p2 =>NULL()
end type
integer ,pointer :: p3 =>NULL()
integer ,pointer :: p4 =>t1
integer ,pointer :: p5
data p5 /t1/
type(ty1)::obj
if(associated(obj%p1).neqv..false.)print*,"101",associated(obj%p1)
if(associated(obj%p2).neqv..false.)print*,"102",associated(obj%p2)
if(associated(p3).neqv..false.)print*,"103",associated(p3)
if(associated(p4).neqv..true.)print*,"104",associated(p4)
if(associated(p5).neqv..true.)print*,"105",associated(p5)
print*,"PASS"
end
