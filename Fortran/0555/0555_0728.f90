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
    class (ty) :: p1(1,*), p2(2,*)
  end subroutine
end interface

      type (ty) :: tgt1(2,3)
      type (ty1) :: tgt2(3,4)
      tgt1%x = 1
      tgt1(2,1)%x = 2
      tgt2%x = 3
      tgt2(3,2)%x = 4
      call sub(tgt1,tgt2)

end program test

subroutine sub(p1,p2)
use selmod 
      class (ty) :: p1(1,*), p2(2,*)
      select type (p1)
        type is (ty)
          select type (p2)
            type is (ty1)
             if(p1(1,2)%x /=2) then 
               print*,214
             else 
               print*,'pass'
             endif
          end select
      end select
end subroutine
