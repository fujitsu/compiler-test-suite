  call test ()
print*,"Pass"
contains
  subroutine test ()
  type t1
     integer::a=1
  end type
   type ty
    class(*),allocatable :: cptr(:)
   end type
    integer, dimension (10) :: f
    type(ty)::obj
    allocate(t1::obj%cptr(5))



s2: select type(asc=>obj%cptr)
    class default
         print*,"201"
    type is(t1)
     asc(2)%a=4
     f(asc(2)%a) = 100
     f(asc(2)%a-2) = 400
     if(f(asc(2)%a-2) .ne. 400)print*,"101"
     if(f(asc(2)%a) .ne. 100)print*,"121"
    end select s2
  end subroutine
end program 
