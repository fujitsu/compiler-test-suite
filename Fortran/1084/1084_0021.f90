module m1
class(*),allocatable::cptr1
class(*),pointer::cptr2

character(len=2)::ii(3)
character(len=3)::jj(2)

contains
subroutine sub(cptr1,cptr2)
class(*),allocatable::cptr1
class(*),pointer::cptr2

select type(aa=>cptr1)
 type is(character(len=*))
  select type(bb=>cptr1)
   type is(character(len=*))
    if(allocated(cptr1)) then
     if(bb /= "123") print*,101
     if(len(bb) /= 3) print*,102
     deallocate(cptr1)
     allocate(cptr1,mold=ii(2))
     if(allocated(cptr1)) then
      deallocate(cptr1)
      allocate(cptr1, source=ii(2))
     endif
    endif

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type(aa=>cptr1)
 type is(character(len=*))
  if(aa /= "22") print*,201
  if(len(aa) /= 2) print*,202

 class default
  print*,913
end select

select type(aa=>cptr2)
 type is(character(len=*))
  select type(bb=>cptr2)
   type is(character(len=*))
    if(associated(cptr2)) then
     if(bb /= "4567") print*,301
     if(len(bb) /= 4) print*,302
     deallocate(cptr2)
     allocate(cptr2,source=jj(2))
    endif

   class default
    print*,914
  end select

 class default
  print*,916
end select

select type(aa=>cptr2)
 type is(character(len=*))
  if(aa /= "654") print*,401
  if(len(aa) /= 3) print*,402

 class default
  print*,916
end select
print*,"PASS"
end subroutine
end module

use m1
ii = ["21","22","23"]
jj = ["321","654"]

allocate(cptr1,source="123")
allocate(cptr2,source="4567")

call sub(cptr1, cptr2)
end
