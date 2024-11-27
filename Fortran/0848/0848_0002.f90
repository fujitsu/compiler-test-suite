  integer,target,save :: trg

    class(*),pointer::ptr=>trg

  trg=1
k=0
select type(ptr)
  type is(integer)
  if (ptr/=1) print *,101,ptr
k=1
end select
if (k/=1) print *,101

    print*,"pass"
end
