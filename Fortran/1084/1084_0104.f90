type tn
integer::ii1(2)
class(*),allocatable:: cptr
character(len=3)::ii2(2)
class(*),allocatable:: cptr1
integer::ii3(2)
class(*),allocatable:: cptr2
end type

type(tn)::base(3)
complex(kind=8),allocatable::ch

allocate(ch)

ch = CMPLX(21.0_8,22.0_8)

allocate(base(3)%cptr, source = CMPLX(11.0,12.0))
allocate(base(2)%cptr1, source = ch)
allocate(base(1)%cptr2, source = CMPLX(13.0,14.0))

select type (a=>base(3)%cptr)
 type is (complex)
  select type (b=>base(3)%cptr)
   type is (complex)
    call move_alloc(base(2)%cptr1, base(3)%cptr) 

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type (c=>base(3)%cptr)
 type is (complex(kind=8))
  if(c /= CMPLX(21.0_8,22.0_8)) print*,201,c

 class default
  print*,913
end select

ch = CMPLX(31.0_8,32.0_8)

select type (a=>base(1)%cptr2)
 type is (complex)
  select type (b=>base(1)%cptr2)
   type is (complex)
    call move_alloc(ch, base(1)%cptr2) 

   class default
    print*,914
  end select

 class default
  print*,915
end select

select type (c=>base(1)%cptr2)
 type is (complex(kind=8))
  if(c /= CMPLX(31.0_8,32.0_8)) print*,301,c
  if(allocated(ch)) print*,302

 class default
  print*,916
end select

print*,"PASS"
end
