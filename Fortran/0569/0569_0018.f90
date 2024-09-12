         type ty
            integer,allocatable  :: t
         end type
         type(ty) :: obj
         call sub(obj)
         if(obj%t .ne. 20) print*,"121"
         print*,"Pass"
         contains
            pure subroutine sub(x)
              type(ty),intent(out) :: x
              allocate(x%t)
              x%t = 20
           end subroutine
       end

