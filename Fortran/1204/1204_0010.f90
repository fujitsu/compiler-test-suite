subroutine s
class(*),pointer::cptr2
     allocate(character::cptr2)

  select type(bb=>cptr2)
   type is(character(len=*))
     deallocate(cptr2)
     allocate(cptr2,mold='123')
      deallocate(cptr2)
  end select
end


print*,"sngg734q : pass"
end
