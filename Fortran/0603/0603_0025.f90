module m
        type ty
         integer :: ii = 3
        end type

       type,extends(ty) :: tty
         integer :: jj = 5
       end type

       type(tty),target,save :: trg

       type ty3
         class(ty),pointer :: cptr
       end type
        type(ty3)::obj2 = ty3(trg)
contains
subroutine s1()
        type(ty3),save::obj= ty3(trg)
        select type(A=>obj%cptr)
        type is(tty)
           if(A%jj .ne. 5) print*,"121"
        class default
          print*,"122"
        end select 
        select type(A=>obj2%cptr)
        type is(tty)
           if(A%jj .ne. 5) print*,"123"
        class default
          print*,"124"
        end select
        print*,"Pass"
end
end module
use m
call s1()
end

