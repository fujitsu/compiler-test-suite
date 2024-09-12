type ty
integer :: ii = 3
integer,pointer::ptr1 
end type

type,extends(ty) :: tty
integer :: jj = 5
integer,pointer::ptr2 
end type
integer,target::t1 =30
type(tty),target,save :: trg = tty(ty(12,t1),13,t1)
type(tty),target,save :: trg2(5)= tty(ty(15,t1),16,t1)

type ty3
 type(tty),pointer :: cptr
 type(tty),pointer :: cptr2(:)
end type
type ty4
type(ty3)::obj(5)= ty3(trg, trg2)
end type
type(ty4)::obj9
print*,"Pass"
end

