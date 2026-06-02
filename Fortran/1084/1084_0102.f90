type tn
integer::ii1(2)
class(*),allocatable:: cptr
integer::ii2
class(*),allocatable:: cptr2
end type

type(tn)::base(2)

class(*),allocatable:: cptr1

integer(kind=2),allocatable::ii

allocate(ii, source=31_2)
allocate(base(2)%cptr, source = 11)
allocate(cptr1, source = ii)
allocate(base(1)%cptr2, source = 111)

select type (a=>base(2)%cptr)
 type is (integer)
  select type (b=>base(2)%cptr)
   type is (integer)
    call move_alloc(cptr1, base(2)%cptr) 

   class default
    print*,911
  end select

 type is (integer(kind=2))
  print*,"HELLO"

 class default
  print*,912
end select

select type (c=>base(2)%cptr)
 type is (integer(kind=2))
  if(c /= 31_2) print*,201,c
  deallocate(base(2)%cptr)

 class default
  print*,913
end select

allocate(base(2)%cptr, source = 11)
ii = 41_2

select type (a=>base(2)%cptr)
 type is (integer)
  select type (b=>base(2)%cptr)
   type is (integer)
    call move_alloc(ii, base(2)%cptr) 

   class default
    print*,914
  end select

 type is (integer(kind=2))
  print*,915

 class default
  print*,916
end select

select type (c=>base(2)%cptr)
 type is (integer(kind=2))
  if(c /= 41_2) print*,301,c

 class default
  print*,917
end select

select type (a=>base(1)%cptr2)
 type is (integer)
  select type (b=>base(1)%cptr2)
   type is (integer)
    select type (c=>base(2)%cptr)
     type is(integer(kind=2))
      select type (c=>base(2)%cptr)
       type is(integer(kind=2))
        call move_alloc(base(2)%cptr, base(1)%cptr2) 

       class default
        print*,914
      end select

     class default
      print*,914
    end select

   class default
    print*,914
  end select

 class default
  print*,916
end select

select type (c=>base(1)%cptr2)
 type is (integer(kind=2))
  if(c /= 41_2) print*,401,c
  if(allocated(base(2)%cptr)) print*,402

 class default
  print*,917
end select
print*,"PASS"
end
