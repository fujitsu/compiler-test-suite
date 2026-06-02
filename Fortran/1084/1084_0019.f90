class(*),allocatable::cptr1
class(*),pointer::cptr2

complex(kind=4)::ii(3)
complex(kind=8)::jj(2)

ii = [(21.0,22.0),(23.0,24.0),(25.0,26.0)]
jj = [(31.0_8,32.0_8),(33.0_8,34.0_8)]

allocate(cptr1,source=(11.0_8,12.0_8))
allocate(cptr2,source=(13.0,14.0))

select type(aa=>cptr1)
 type is(complex(kind=8))
  select type(bb=>cptr1)
   type is(complex(kind=8))
    if(allocated(cptr1)) then
     if(bb /= ((11.0_8,12.0_8))) print*,101
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
 type is(complex(kind=4))
  if(aa /= (23.0,24.0)) print*,201

 class default
  print*,913
end select

select type(aa=>cptr2)
 type is(complex)
  select type(bb=>cptr2)
   type is(complex)
    if(associated(cptr2)) then
     if(bb /= ((13.0,14.0))) print*,301
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
 type is(complex(kind=8))
  if(aa /= jj(2)) print*,401

 class default
  print*,916
end select
print*,"PASS"
end
