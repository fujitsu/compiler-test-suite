      type base
          integer :: ii = 3
         end type
         type,extends(base) :: ty
           integer :: jj = 4
         end type
         type,extends(ty) :: tty
           integer :: kk = 5
         end type
         type(tty),target,save :: tty_obj
         type(ty),target,save :: ty_obj2

         type tt
           class(base),pointer:: ccmp =>tty_obj
         end type
          type(tt) :: obj(2) = tt(ty_obj2)
        call s1()
       print*,"Pass"
  contains    
       subroutine s1()
        select type(s1=>obj(1)%ccmp)
        type is(ty)
          if(s1%ii .ne. 3) print*,"123"
        class default
         print*,"127"
        end select
        select type(s1=>obj(2)%ccmp)
        type is(ty)
          if(s1%jj .ne. 4) print*,"125"
        class default
         print*,"128"
        end select
       end
     end
       
               

