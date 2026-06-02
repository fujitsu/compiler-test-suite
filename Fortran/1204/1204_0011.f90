subroutine s
class(*),allocatable::cptr2

     allocate(character::cptr2)
  select type(bb=>cptr2)
   type is(character(len=*))
     deallocate(cptr2)
     allocate(cptr2,source='123')
      deallocate(cptr2)
  end select
end

call s
print*,"sngg735q : pass"
end
