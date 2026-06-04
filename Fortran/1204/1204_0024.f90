subroutine s
type x
class(*),pointer::cptr2
end type
type(x)::w
     allocate(character::w%cptr2)

  select type(bb=>w%cptr2)
   type is(character(len=*))
     deallocate(w%cptr2)
     allocate(w%cptr2,mold='123')
      deallocate(w%cptr2)
  end select
end
call s


print*,"sngg748q : pass"
end
