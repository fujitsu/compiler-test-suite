integer,target::t1=12
type ty2
   integer,pointer:: ptr2
end type

type tty
   type(ty2)::nobj(1)
end type

type ty1
  type(tty)::obj4(1)
end type
type(ty1)::obj2(3) = [ty1([tty([ty2(t1)])]),ty1([tty([ty2(NULL())])]),ty1([tty([ty2(t1)])])]
if(obj2(3)%obj4(1)%nobj(1)%ptr2.ne.12)print*,"101"
if(obj2(1)%obj4(1)%nobj(1)%ptr2.ne.12)print*,"101"

print*,"pass"
end
