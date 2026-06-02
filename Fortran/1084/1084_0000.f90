type tn
class(*),allocatable::cptr1
class(*),pointer::cptr2
end type

type(tn)::obj(2)

integer(kind=4)::ii(3)
integer(kind=2)::jj(2)

ii = [21,22,23]
jj = [31,32]

allocate(obj(1)%cptr1,source=11_2)
allocate(obj(2)%cptr2,source=12)

select type(aa=>obj(1)%cptr1)
 type is(integer(kind=2))
  select type(bb=>obj(1)%cptr1)
   type is(integer(kind=2))
    if(allocated(obj(1)%cptr1)) then
     deallocate(obj(1)%cptr1)
     allocate(obj(1)%cptr1,source=ii(2))
    endif

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type(aa=>obj(1)%cptr1)
 type is(integer(kind=4))
  if(aa /= 22) print*,201

 class default
  print*,913
end select

select type(aa=>obj(2)%cptr2)
 type is(integer)
  select type(bb=>obj(2)%cptr2)
   type is(integer)
    if(associated(obj(2)%cptr2)) then
     deallocate(obj(2)%cptr2)
     allocate(obj(2)%cptr2,source=jj(1))
    endif

   class default
    print*,914
  end select

 class default
  print*,916
end select

select type(aa=>obj(2)%cptr2)
 type is(integer(kind=2))
  if(aa /= 31) print*,301

 class default
  print*,916
end select
print*,"PASS"
end
