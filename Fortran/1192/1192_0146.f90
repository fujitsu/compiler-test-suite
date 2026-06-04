class(*),allocatable:: cptr
class(*),allocatable:: cptr1
class(*),allocatable:: cptr2

integer(kind=2),allocatable::ii

allocate(ii, source=31_2)
allocate(cptr, source = 11)
allocate(cptr1, source = ii)
allocate(cptr2, source = 111)

select type (a=>cptr)
 type is (integer)
  select type (b=>cptr)
   type is (integer)
    call move_alloc(cptr1, cptr) 

   class default
    print*,911
  end select

 type is (integer(kind=2))
  print*,"HELLO"

 class default
  print*,912
end select

select type (c=>cptr)
 type is (integer(kind=2))
  if(c /= 31_2) print*,201,c
  deallocate(cptr)

 class default
  print*,913
end select

allocate(cptr, source = 11)
ii = 41_2

select type (a=>cptr)
 type is (integer)
  select type (b=>cptr)
   type is (integer)
    call move_alloc(ii, cptr) 

   class default
    print*,914
  end select

 type is (integer(kind=2))
  print*,915

 class default
  print*,916
end select

select type (c=>cptr)
 type is (integer(kind=2))
  if(c /= 41_2) print*,301,c

 class default
  print*,917
end select

select type (a=>cptr2)
 type is (integer)
  select type (b=>cptr2)
   type is (integer)
    select type (c=>cptr)
     type is(integer(kind=2))
      select type (c=>cptr)
       type is(integer(kind=2))
        call move_alloc(cptr, cptr2) 

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

select type (c=>cptr2)
 type is (integer(kind=2))
  if(c /= 41_2) print*,401,c
  if(allocated(cptr)) print*,402

 class default
  print*,917
end select
print*,"sngg395p : pass"
end
