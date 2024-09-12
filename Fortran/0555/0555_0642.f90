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
  subroutine sub(p1,p2)
    use selmod
    class (ty) :: p1, p2
  end subroutine
end interface

      type (ty) :: tgt1
      type (ty1) :: tgt2
      tgt1%x = 1
      tgt2%x = 2
      call sub(tgt1,tgt2)

end program test

subroutine sub(p1,p2)
use selmod 
      class (ty) :: p1, p2
      select type (p1)
        type is (ty)
          select type (p2)
            type is (ty1)
             p2%y = 5
             if(p2%y /=5) then 
               print*,214
             else 
               print*,'pass'
             endif
          end select
      end select
end subroutine
