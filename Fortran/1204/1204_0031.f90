subroutine s
type x
class(*),allocatable::cptr2
end type
type(x)::w
type b
  integer::xx
end type
type c
  integer::xx
end type

     allocate(b::w%cptr2)
  select type(bb=>w%cptr2)
   type is(b)
     deallocate(w%cptr2)
     allocate(c::w%cptr2)
      deallocate(w%cptr2)
  end select
end

call s
print*,"sngg755q : pass"
end
