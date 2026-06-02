subroutine s
class(*),allocatable::cptr2

     allocate(cptr2,mold='123')
  select type(bb=>cptr2)
   type is(character(len=*))
     deallocate(cptr2)
     allocate(cptr2,mold='123')
      deallocate(cptr2)
  end select
end

call s
print*,"sngg737q : pass"
end
