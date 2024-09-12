   module m      
      type base
          integer :: ii = 3
         end type
         type,extends(base) :: ty
           integer :: jj = 4
         end type
         type,extends(ty) :: tty
           integer :: kk = 5
         end type


         type(ty),target,save :: ty_obj
         type(tty),target,save :: tty_obj

         type tt
           class(base),pointer:: ccmp =>tty_obj
         end type
         type tt2
           class(base),pointer:: ccmp
         end type
        type(tt) :: obj 
        type(tt2) :: obj2 = tt2(tty_obj) 
        class(base),pointer:: ccmp =>tty_obj
  contains    
       subroutine s1()
        select type(s1=>ccmp)
        type is(tty)
          if(s1%jj .ne. 4) print*,"122"
        class default
         print*,"121"
        end select
       select type(s1=>obj%ccmp)
        type is(tty)
          if(s1%jj .ne. 4) print*,"222"
        class default
         print*,"221"
        end select
        select type(s1=>obj2%ccmp)
        type is(tty)
          if(s1%jj .ne. 4) print*,"322"
        class default
         print*,"321"
        end select
       end
end
use m
        call s1()
       print*,"Pass"
        end
       
               

