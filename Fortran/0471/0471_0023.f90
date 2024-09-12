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
          type(tty),target :: trg(2)

          class(ty),pointer :: cptr(:)=>obj%trg,cptr2
          class(ty),pointer :: cptra(:)=>trg
          class(ty),pointer :: cptrb(:)=>trg(1:2)

          select type(cptr)
          type is(tty)
             if(any(cptr%jj .ne. 5)) print*,"111"
             if(any(cptr%ii .ne. 3)) print*,"121"
          class default
          end select

if (1.eq.2) then
          select type(cptr2)

          type is(ty)
          class default
            print*,"123"
          end select
endif

          print*,"pass"
          end
