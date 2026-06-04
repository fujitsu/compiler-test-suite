class(*),pointer::cptr1
class(*),pointer::cptr2

allocate(cptr1,source=123456)
allocate(cptr2,source="4567")

select type(aa=>cptr1)
 class default
   print*,911

 type is(integer)
  select type(aa=>cptr2)
   type is(character(len=*))
    select type(cc=>cptr2)
     type is(character(len=*))
      if(associated(cptr2)) then
       NULLIFY(cptr2,cptr1)
      endif

     class default
      print*,914
    end select

   class default
    print*,916
  end select
end select

if(associated(cptr1)) print*,"101"
if(associated(cptr2)) print*,"102"
print*,"PASS"
end
