class(*),allocatable::cptr1(:)
class(*),pointer::cptr2(:)

integer(kind=2)::jj(2)

jj = [41,42]

allocate(cptr1,source=[11_2,12_2])
allocate(cptr2,source=[21,22,23])

select type(aa=>cptr1)
 type is(integer(kind=2))
  select type(bb=>cptr1)
   type is(integer(kind=2))
    if(allocated(cptr1)) then
     if(any(bb /= [11_2,12_2])) print*,101
     if(size(bb) /= 2) print*,102
     deallocate(cptr1)
     allocate(integer::cptr1(3))
     cptr1 = [31,32,33]
    endif

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type(aa=>cptr1)
 type is(integer(kind=4))
  if(any(aa /= [31,32,33])) print*,201
  if(size(aa) /= 3) print*,202

 class default
  print*,913
end select

select type(aa=>cptr2)
 type is(integer)
  select type(bb=>cptr2)
   type is(integer)
    if(associated(cptr2)) then
     if(any(bb /= [21,22,23])) print*,301
     if(size(bb) /= 3) print*,302
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
 type is(integer(kind=2))
  if(any(aa /= [41,42])) print*,401
  if(size(aa) /= 2) print*,402

 class default
  print*,916
end select
print*,"PASS"
end
