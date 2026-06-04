class(*),pointer::cptr2

character(len=2)::ii(3)
character(len=3)::jj(2)

ii = ["21","22","23"]
jj = ["321","654"]

allocate(cptr2,source="4567")

select type(aa=>cptr2)
 type is(character(len=*))
  select type(bb=>cptr2)
   type is(character(len=*))
    if(associated(cptr2)) then
     if(bb /= "4567") print*,301
     if(len(bb) /= 4) print*,302
     deallocate(cptr2)
     allocate(cptr2,mold=jj(2))
     if(associated(cptr2)) then
      deallocate(cptr2)
      allocate(cptr2, source=jj(2))
     endif
    endif

   class default
    print*,914
  end select

 class default
  print*,916
end select

print*,"sngg732q : pass"
end
