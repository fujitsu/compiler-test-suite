type tn
integer::ii(2)
class(*),pointer::cptr1
integer::ii1(2)
class(*),pointer::cptr2
end type

type(tn)::obj(3)

allocate(obj(1)%cptr1,source=123456)
allocate(obj(1)%cptr2,source="4567")

select type(aa=>obj(1)%cptr1)
 class default
   print*,911

 type is(integer)
  select type(bb=>obj(1)%cptr2)
   type is(character(len=*))
    select type(cc=>obj(1)%cptr2)
     type is(character(len=*))
      if(associated(obj(1)%cptr2)) then
       NULLIFY(obj(1)%cptr2, obj(1)%cptr1)
      endif

     class default
      print*,914
    end select

   class default
    print*,916
  end select
end select

if(associated(obj(1)%cptr1)) print*,"101"
if(associated(obj(1)%cptr2)) print*,"102"
print*,"PASS"
end
