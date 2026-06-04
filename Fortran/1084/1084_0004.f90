type tn
integer::ii(2)
class(*),allocatable::cptr1(:)
integer,pointer::jj(:)
class(*),pointer::cptr2(:)
end type

type(tn),pointer::obj(:)

integer(kind=2)::jj(2)

jj = [41,42]

allocate(obj(3))
allocate(obj(2)%jj(3))
allocate(obj(3)%jj(4))

allocate(obj(2)%cptr1,source=[11_2,12_2])
allocate(obj(3)%cptr2,source=[21,22,23])

select type(aa=>obj(2)%cptr1)
 type is(integer(kind=2))
  select type(bb=>obj(2)%cptr1)
   type is(integer(kind=2))
    if(allocated(obj(2)%cptr1)) then
     if(any(bb /= [11_2,12_2])) print*,101
     if(size(bb) /= 2) print*,102
     deallocate(obj(2)%cptr1)
     allocate(integer::obj(2)%cptr1(3))
     obj(2)%cptr1 = [31,32,33]
    endif

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type(aa=>obj(2)%cptr1)
 type is(integer(kind=4))
  if(any(aa /= [31,32,33])) print*,201
  if(size(aa) /= 3) print*,202

 class default
  print*,913
end select

select type(aa=>obj(3)%cptr2)
 type is(integer)
  select type(bb=>obj(3)%cptr2)
   type is(integer)
    if(associated(obj(3)%cptr2)) then
     if(any(bb /= [21,22,23])) print*,301
     if(size(bb) /= 3) print*,302
     deallocate(obj(3)%cptr2)
     allocate(obj(3)%cptr2,source=jj)
    endif

   class default
    print*,914
  end select

 class default
  print*,916
end select

select type(aa=>obj(3)%cptr2)
 type is(integer(kind=2))
  if(any(aa /= [41,42])) print*,401
  if(size(aa) /= 2) print*,402

 class default
  print*,916
end select
print*,"PASS"
end
