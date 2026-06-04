module m1
class(*),allocatable::cptr1(:)
class(*),pointer::cptr2(:)

character(len=2)::ii(3)
character(len=3)::jj(2)

contains
subroutine sub(cptr1,cptr2)
class(*),allocatable::cptr1(:)
class(*),pointer::cptr2(:)

select type(aa=>cptr1)
 type is(character(len=*))
  select type(bb=>cptr1)
   type is(character(len=*))
    if(allocated(cptr1)) then
     if(any(bb /= ["AAA","BBB","CCC","DDD"])) print*,101
     if(len(bb) /= 3) print*,102
     if(size(bb) /= 4) print*,103
     deallocate(cptr1)
     allocate(cptr1,source=ii)
    endif

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type(aa=>cptr1)
 type is(character(len=*))
  if(any(aa /= ["21","22","23"])) print*,201
  if(len(aa) /= 2) print*,202
  if(size(aa) /= 3) print*,203

 class default
  print*,913
end select

select type(aa=>cptr2)
 type is(character(len=*))
  select type(bb=>cptr2)
   type is(character(len=*))
    if(associated(cptr2)) then
     if(any(bb /= ["11","12","13"])) print*,301
     if(len(bb) /= 2) print*,302
     if(size(bb) /= 3) print*,303
     deallocate(cptr2)
     allocate(cptr2,source=jj)
    endif

   class default
    print*,914
  end select

 class default
  print*,916
end select

select type(aa=>cptr2)
 type is(character(len=*))
  if(any(aa /= jj)) print*,401
  if(len(aa) /= 3) print*,402
  if(size(aa) /= 2) print*,403

 class default
  print*,916
end select
print*,"PASS"
end subroutine
end module

use m1
ii = ["21","22","23"]
jj = ["321","654"]

allocate(cptr1,source=["AAA","BBB","CCC","DDD"])
allocate(cptr2,source=["11","12","13"])

call sub(cptr1, cptr2)
end
