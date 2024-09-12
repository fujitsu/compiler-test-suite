type ty
integer :: ii = 3
end type

type,extends(ty) :: tty
integer :: jj = 5
end type

type(tty),target,save :: trg
type t1
 class(ty),pointer :: cptr
end type
type(t1)::obj1
 data obj1 /t1(NULL())/
 if(associated(obj1%cptr).neqv..false.)then
 select type(A=>obj1%cptr)
 type is(ty)
     trg%jj = 5
 class default
   print*,"121"
 end select
    if(trg%jj .ne. 5) print*,"122"
 endif
 print*,"Pass"
 end

