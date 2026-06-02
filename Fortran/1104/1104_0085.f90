class(*),allocatable::cptr1

character(len=2)::ii(3)

ii = ["21","22","23"]

allocate(cptr1,source="123")

select type(aa=>cptr1)
 type is(character(len=*))
  select type(bb=>cptr1)
   type is(character(len=*))
    if(allocated(cptr1)) then
     if(bb /= "123") print*,101
     if(len(bb) /= 3) print*,102
     deallocate(cptr1)
     allocate(cptr1,source=ii(2))
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

print*,"sngg760p : pass"
end
