MODULE selmod

type ty
  integer :: x=1
end type ty

type,extends(ty) :: ty1
  integer :: y=1
end type ty1

END MODULE

program test
 use selmod 
 interface
  subroutine sub(p1)
      use selmod 
      class (ty) :: p1
  end subroutine
end interface 

      type (ty) :: tgt1
      tgt1%x = 5
      call sub(tgt1)

end program test

subroutine sub(p1)
 use selmod 
      class (ty) :: p1
      type(ty) :: p2
      p2%x=1
      select type (p1)
        type is (ty)
         p1 = p2
         if(p1%x == 1) then
           print*,'pass'
         else
           print*,102
         endif
        type is(ty1)
         p1%x=p2%x
         print*,101
      end select
end subroutine
