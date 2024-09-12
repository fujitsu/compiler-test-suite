module m
        type ty
           integer :: ii = 3
        end type
         
        type,extends(ty) :: tty
             integer :: jj = 5
        end type
        type(tty),target,save :: trg
        type ty2
           integer::x =20
           real*8::y=30
           class(ty),pointer::ptr
        end type
        type(ty2)::obj(5) = ty2(ptr=trg) 
       contains
        subroutine msub2()
          select type(A=>obj(5)%ptr)
          type is(tty)
           if(A%jj.ne.20)print*,"222"
          class default
            print*,"224"
          end select
       end
end module
use m
        call sub2()
        call msub2()
          print*,"PASS"
        contains
        subroutine sub2()
          select type(A=>obj(1)%ptr)
          type is(tty)
           if(A%jj.ne.5)print*,"222"
           A%jj=20
          class default
            print*,"224"
          end select
       end
       end

