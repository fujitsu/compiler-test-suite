  call test ()
print*,"Pass"
contains
  subroutine test ()
   type ty
    class(*),allocatable :: cptr
   end type
    integer, dimension (10) :: f
    type(ty)::obj
    allocate(obj%cptr,source=1)



s2: select type(asc=>obj%cptr)
    type is(integer)
     asc=4
     f(asc) = 100
     f(asc-2) = 400
     if(f(asc-2) .ne. 400)print*,"101"
     if(f(asc) .ne. 100)print*,"121"
    class default
    print*,"102"
    end select s2
  end subroutine
end program 
