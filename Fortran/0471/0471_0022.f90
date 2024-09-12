          type ty
          integer :: ii = 3
          end type

          type,extends(ty) :: tty
          integer :: jj = 5
          end type

          type xx
          type(tty) :: trg(2)
          end type

          type(xx),save,target :: obj
          type(tty),target :: tty_trg(2)

          class(ty),pointer :: cptr(:),cptr2

          data cptr,cptr2 /obj%trg,NULL()/

          select type(cptr)
          type is(tty)
             if(any(cptr%jj .ne. 5)) print*,"111"
             if(any(cptr%ii .ne. 3)) print*,"121"
          class default
          end select

          cptr2=>obj%trg(1) 
          select type(cptr2)

          type is(tty)
          type is(ty)
          class default
            print*,"123"
          end select

          print*,"pass"
          end
