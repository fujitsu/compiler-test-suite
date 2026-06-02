class(*),pointer::cptr2

     allocate(cptr2,mold='123')
select type(aa=>cptr2)
 type is(character(len=*))
  select type(bb=>cptr2)
   type is(character(len=*))
     deallocate(cptr2)
     allocate(cptr2,mold='123')
      deallocate(cptr2)

  end select

end select

print*,"sngg733q : pass"
end
