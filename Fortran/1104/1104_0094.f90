type x
  integer(8)::dmy
  integer,allocatable::y
end type
class(*),allocatable::cptr1
class(*),pointer::cptr2

type(x)::cc(3)
type(x)::dd(2)
cc=[x(0,1),x(0,2),x(0,3)]
dd=[x(0,11),x(0,12)]

allocate(cptr1,source=x(0,101))
allocate(cptr2,source=x(0,102))

select type(aa=>cptr1)
 type is(x)
  select type(bb=>cptr1)
   type is(x)
    if(allocated(cptr1)) then
     if(bb%y /= 101  ) print*,101
     if(same_type_as(cptr1, cptr2) .eqv. .FALSE.) print*,117
     deallocate(cptr1)
     allocate(cptr1,source=cc(2))
    endif

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type(aa=>cptr1)
 type is(x)
  if(aa%y /= 2   ) print*,201

 class default
  print*,913
end select

select type(aa=>cptr2)
 type is(x               )
  select type(bb=>cptr2)
   type is(x)
    if(associated(cptr2)) then
     if(bb%y /= 102) print*,301
     deallocate(cptr2)
     allocate(cptr2,mold=dd(2))
     if(associated(cptr2)) then
      deallocate(cptr2)
      allocate(cptr2, source=dd(2))
     endif
    endif

   class default
    print*,914
  end select

 class default
  print*,916
end select

select type(aa=>cptr2)
 type is(x               )
  if(aa%y /= 12   ) print*,401

 class default
  print*,916
end select
print*,"sngg771p : pass"
end
