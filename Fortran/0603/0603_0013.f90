module m1
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
          type(ty),target,save :: ty_obj

          type tt
            class(base),pointer:: ccmp =>ty_obj
          end type

          type(tt) :: obj
contains
        subroutine s2()
         call s1()
        print*,"Pass"
 end
        subroutine s1()
         select type(s1=>obj%ccmp)
         type is(tty)
           if(s1%kk .ne. 5) print*,"123"
           print*,"121"
         type is(ty)
           if(s1%jj .ne. 4) print*,"122"
         class default
          print*,"127"
         end select
        end
        end
 use m1
   call s2()
 end

