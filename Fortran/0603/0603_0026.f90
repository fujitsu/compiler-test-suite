module m
        type ty
         integer :: ii = 3
        end type

       type,extends(ty) :: tty
         integer :: jj = 5
       end type

       type(tty),target,save :: trg
       class(ty),pointer,save :: cptr=>trg
contains
subroutine s1()
       class(ty),pointer,save :: cptr2=>trg
        select type(A=>cptr)
        type is(tty)
           if(A%jj .ne. 5) print*,"121"
        class default
          print*,"122"
        end select 
        select type(A=>cptr2)
        type is(tty)
           if(A%jj .ne. 5) print*,"123"
        class default
          print*,"124"
        end select
        print*,"Pass"
end
end
use m
   call s1()
end

