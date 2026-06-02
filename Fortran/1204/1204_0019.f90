subroutine s
type x
class(*),allocatable::c
end type
type(x)::g

     allocate(character(len=3)::g%c)
  select type(bb=>g%c)
   type is(character(len=*))
     deallocate(g%c)
     allocate(character(len=3)::g%c)
      deallocate(g%c)
  end select
end

call s
print*,"sngg743q : pass"
end
