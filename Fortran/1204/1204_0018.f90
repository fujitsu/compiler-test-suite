subroutine s
class(*),allocatable::cptr2
type b
  integer::xx
end type
type c
  integer::xx
end type

     allocate(b::cptr2)
  select type(bb=>cptr2)
   type is(b)
     deallocate(cptr2)
     allocate(c::cptr2)
      deallocate(cptr2)
  end select
end

call s
print*,"sngg742q : pass"
end
