class(*),allocatable::cptr1
class(*),pointer::cptr2

character(len=2)::ii(3)
character(len=3)::jj(2)

ii = ["21","22","23"]
jj = ["321","654"]

allocate(cptr1,source="123")
allocate(cptr2,source="4567")

select type(aa=>cptr1)
 type is(character(len=*))
  select type(bb=>cptr1)
   type is(character(len=*))
    if(allocated(cptr1)) then
     deallocate(cptr1)
     if(same_type_as(cptr1, cptr2) .neqv. .FALSE.) print*,118
     allocate(cptr1,source=ii(2))
    endif

  end select

end select

select type(aa=>cptr1)
 type is(character(len=*))
  if(aa /= "22") print*,201
  if(len(aa) /= 2) print*,202

 class default
  print*,913
end select

print*,"sngg761p : pass"
end
