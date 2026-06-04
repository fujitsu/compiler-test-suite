class(*),allocatable::cptr1(:)
class(*),pointer::cptr2(:)

complex(kind=4)::ii(4)
complex(kind=8)::jj(4)

ii = [(21.0,22.0),(23.0,24.0),(25.0,26.0),(27.0,28.0)]
jj = [(31.0_8,32.0_8),(33.0_8,34.0_8),(35.0_8,36.0_8),(37.0_8,38.0_8)]

allocate(cptr1,source=[(11.0_8,12.0_8),(13.0_8,14.0_8)])
allocate(cptr2,source=[(21.0,22.0),(23.0,24.0),(25.0,26.0)])

select type(aa=>cptr1)
 type is(complex(kind=8))
  select type(bb=>cptr1)
   type is(complex(kind=8))
    if(allocated(cptr1)) then
     if(size(bb) /= 2) print*,101
     if(any(bb /= ([(11.0_8,12.0_8),(13.0_8,14.0_8)]))) print*,101
     deallocate(cptr1)
     allocate(cptr1,source=ii(2:4))
    endif

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type(aa=>cptr1)
 type is(complex(kind=4))
  if(size(aa) /= 3) print*,201
  if(any(aa /= ii(2:4))) print*,202

 class default
  print*,913
end select

select type(aa=>cptr2)
 type is(complex)
  select type(bb=>cptr2)
   type is(complex)
    if(associated(cptr2)) then
     if(size(bb) /= 3) print*,301
     if(any(bb /= [(21.0,22.0),(23.0,24.0),(25.0,26.0)])) print*,302
     deallocate(cptr2)
     allocate(cptr2,mold=jj(2:3))
     if(associated(cptr2) .AND. size(cptr2) == 2) then
       deallocate(cptr2)
       allocate(cptr2, source = jj(2:3))
     endif
    endif

   class default
    print*,914
  end select

 class default
  print*,915
end select

select type(aa=>cptr2)
 type is(complex(kind=8))
  if(any(aa /= jj(2:3))) print*,401
  if(size(aa) /= 2) print*,402

 class default
  print*,916
end select
print*,"PASS"
end
