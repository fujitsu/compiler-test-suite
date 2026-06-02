subroutine s
type x
class(*),allocatable::cptr2
end type
type(x)::w

  allocate(character(len=3)::w%cptr2)
  select type(bb=>w%cptr2)
   type is(character(len=*))
     deallocate(w%cptr2)
  !!!!!   allocate(character(len=3)::w%cptr2)
      deallocate(w%cptr2,stat=is)
if (is==0) print *,8001
  end select
end


call s
print*,"sngg751q : pass"
end
