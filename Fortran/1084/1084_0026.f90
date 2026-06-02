class(*),allocatable::cptr1(:)
class(*),pointer::cptr2(:)

real(kind=4)::ii(3)
real(kind=8)::jj(2)

ii = [21.0,23.0,25.0]
jj = [31.0_8,33.0_8]

allocate(cptr1,source=[11.0_8,12.0_8,13.0_8,14.0_8])
allocate(cptr2,source=[21.0,22.0,23.0,24.0])

select type(aa=>cptr1)
 type is(real(kind=8))
  select type(bb=>cptr1)
   type is(real(kind=8))
    if(allocated(cptr1)) then
     if(size(bb) /= 4) print*,101
     if(any(bb /= [11.0_8,12.0_8,13.0_8,14.0_8])) print*,102
     deallocate(cptr1)
     allocate(cptr1,mold=ii(1:3))
     if(allocated(cptr1) .AND. size(cptr1) == 3) then
       cptr1 = ii(1:3)
     endif
    endif

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type(aa=>cptr1)
 type is(real(kind=4))
  if(size(aa) /= 3) print*,201
  if(any(aa /= ii(1:3))) print*,202,aa

 class default
  print*,913
end select

select type(aa=>cptr2)
 type is(real)
  select type(bb=>cptr2)
   type is(real)
    if(associated(cptr2)) then
     if(size(bb) /= 4) print*,301
     if(any(bb /= [21.0,22.0,23.0,24.0])) print*,302
     deallocate(cptr2)
     allocate(cptr2,source=jj(1:2:1))
    endif

   class default
    print*,914
  end select

 class default
  print*,916
end select

select type(aa=>cptr2)
 type is(real(kind=8))
  if(size(aa) /= 2) print*,401
  if(any(aa /= jj)) print*,402

 class default
  print*,916
end select
print*,"PASS"
end
