subroutine s
class(*),allocatable::cptr2

  allocate(character(len=3)::cptr2)
  select type(bb=>cptr2)
   type is(character(len=*))
     deallocate(cptr2)
  !!!!!   allocate(character(len=3)::cptr2)
      deallocate(cptr2,stat=is)
if (is==0) print *,8001
  end select
end


call s
print*,"sngg738q : pass"
end
