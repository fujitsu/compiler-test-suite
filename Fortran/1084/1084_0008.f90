module m1
type tn
integer::ii(3)
class(*),allocatable::cptr1(:)
integer::jj(2)
class(*),pointer::cptr2(:)
end type

type(tn)::obj(3)

integer(kind=4)::ii(3)
integer(kind=2)::jj(2)

contains
subroutine sub(obj)
type(tn)::obj(*)

select type(aa=>obj(2)%cptr1)
 type is(integer(kind=2))
  select type(bb=>obj(2)%cptr1)
   type is(integer(kind=2))
    if(allocated(obj(2)%cptr1)) then
     if(any(bb /= [31_2,32_2,33_2,34_2])) print*,101
     if(size(bb) /= 4) print*,103
     deallocate(obj(2)%cptr1)
     allocate(obj(2)%cptr1,mold=ii)
     if(allocated(obj(2)%cptr1)) then
      deallocate(obj(2)%cptr1)
      allocate(obj(2)%cptr1,source=ii)
     endif
    endif

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type(aa=>obj(2)%cptr1)
 type is(integer)
  if(any(aa /= [21,22,23])) print*,201
  if(size(aa) /= 3) print*,203

 class default
  print*,913
end select

select type(aa=>obj(3)%cptr2)
 type is(integer)
  select type(bb=>obj(3)%cptr2)
   type is(integer)
    if(associated(obj(3)%cptr2)) then
     if(any(bb /= [11,12,13])) print*,301
     if(size(bb) /= 3) print*,303
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
  if(any(aa /= jj)) print*,401
  if(size(aa) /= 2) print*,403

 class default
  print*,916
end select
print*,"PASS"
end subroutine
end module

use m1
ii = [21,22,23]
jj = [321,654]

allocate(obj(2)%cptr1,source=[31_2,32_2,33_2,34_2])
allocate(obj(3)%cptr2,source=[11,12,13])

call sub(obj)
end
