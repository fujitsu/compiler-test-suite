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

                type(ty3)::obj = ty3(trg)

                select type(A=>obj%cptr)
                type is(tty)
                   if(A%jj .ne. 5) print*,"121"
                class default
                  print*,"122"
                end select
print *,'pass'
                end
