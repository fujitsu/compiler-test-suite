subroutine s
type x
class(*),allocatable::cptr2
end type
type(x)::w

     allocate(w%cptr2,mold='123')
  select type(bb=>w%cptr2)
   type is(character(len=*))
     deallocate(w%cptr2)
     allocate(w%cptr2,mold='123')
      deallocate(w%cptr2)
  end select
end

call s
print*,"sngg750q : pass"
end
