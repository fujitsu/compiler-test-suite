subroutine s
class(*),pointer::cptr2

     allocate(character(len=3)::cptr2)
  select type(bb=>cptr2)
   type is(character(len=*))
     deallocate(cptr2)
     allocate(character(len=3)::cptr2)
      deallocate(cptr2)
  end select
end

call s
print*,"sngg736q : pass"
end
