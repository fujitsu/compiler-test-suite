class(*),allocatable:: cptr
class(*),allocatable:: cptr1
class(*),allocatable:: cptr2

complex(kind=8),allocatable::ch

allocate(ch)

ch = CMPLX(21.0_8,22.0_8)

allocate(cptr, source = CMPLX(11.0,12.0))
allocate(cptr1, source = ch)
allocate(cptr2, source = CMPLX(13.0,14.0))

select type (a=>cptr)
 type is (complex)
  select type (b=>cptr)
   type is (complex)
    call move_alloc(cptr1, cptr) 

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type (c=>cptr)
 type is (complex(kind=8))
  if(c /= CMPLX(21.0_8,22.0_8)) print*,201,c

 class default
  print*,913
end select

ch = CMPLX(31.0_8,32.0_8)

select type (a=>cptr2)
 type is (complex)
  select type (b=>cptr2)
   type is (complex)
    call move_alloc(ch, cptr2) 

   class default
    print*,914
  end select

 class default
  print*,915
end select

select type (c=>cptr2)
 type is (complex(kind=8))
  if(c /= CMPLX(31.0_8,32.0_8)) print*,301,c
  if(allocated(ch)) print*,302

 class default
  print*,916
end select

print*,"PASS"
end
