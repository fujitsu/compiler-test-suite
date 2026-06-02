class(*),allocatable::cptr1(:)
class(*),pointer::cptr2(:)

character(len=2)::ii(3)
character(len=3)::jj(2)

ii = ["21","22","23"]
jj = ["321","654"]

allocate(cptr1,source=["123","456"])
allocate(cptr2,source=["44","55","66"])

select type(aa=>cptr1)
 type is(character(len=*))
  select type(bb=>cptr1)
   type is(character(len=*))
    if(allocated(cptr1)) then
     if(size(bb) /= 2) print*,101
     if(any(bb /= ["123","456"])) print*,102
     if(len(bb) /= 3) print*,103
     deallocate(cptr1)
     allocate(cptr1,mold=ii)
     if(allocated(cptr1) .AND. size(cptr1) == 3) then
      deallocate(cptr1)
      allocate(cptr1, source=ii)
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
  if(size(aa) /= 3) print*,201
  if(any(aa /= ["21","22","23"])) print*,201
  if(len(aa) /= 2) print*,203

 class default
  print*,913
end select

select type(aa=>cptr2)
 type is(character(len=*))
  select type(bb=>cptr2)
   type is(character(len=*))
    if(associated(cptr2)) then
     if(size(bb) /= 3) print*,301
     if(any(bb /= ["44","55","66"])) print*,302
     if(len(bb) /= 2) print*,303
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
  if(size(aa) /= 2) print*,401
  if(any(aa /= jj)) print*,402
  if(len(aa) /= 3) print*,403

 class default
  print*,916
end select
print*,"PASS"
end
