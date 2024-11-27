  integer,target,save :: trg

  type ty2
    class(*),pointer::ptr
  end type

    type(ty2)::obj = ty2(trg)
  trg=1
k=0
select type(a=>obj%ptr)
  type is(integer)
  if (a/=1) print *,101,a
k=1
end select
if (k/=1) print *,101

    print*,"pass"
end
