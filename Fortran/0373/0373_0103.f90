integer,pointer::a1=>null()
integer,pointer,dimension(:)::a2=>null()
type t
 integer,pointer::t1=>null()
 integer,pointer,dimension(:)::t2=>null()
end type
type(t)::a3

if(associated(a1))print*,'ng1'
if(associated(a2))print*,'ng2'
if(associated(a3%t1))print*,'ng3'
if(associated(a3%t2))print*,'ng4'

allocate(a1,a2(10),a3%t1,a3%t2(10))

if(.not.associated(a1))print*,'ng1'
if(.not.associated(a2))print*,'ng2'
if(.not.associated(a3%t1))print*,'ng3'
if(.not.associated(a3%t2))print*,'ng4'

a1=>null(); a2=>null(); a3%t1=>null(); a3%t2=>null()

if(associated(a1))print*,'ng1'
if(associated(a2))print*,'ng2'
if(associated(a3%t1))print*,'ng3'
if(associated(a3%t2))print*,'ng4'

print*,'pass'
end
