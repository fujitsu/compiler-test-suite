           type ty
            integer :: ii = 3
           end type
          type,extends(ty) :: tty
            integer :: jj = 5
          end type
          type ty5
            type(tty):: trg
          end type
          type(ty5),target::tar
          type ty2
             class(ty),pointer::ptr=>tar%trg
          end type
          type(ty2),allocatable::obj
          type(ty2),allocatable::obj2
          type(ty2)::obj3
          type(ty2)::obj4
          allocate(obj)
          allocate(obj2)
          call sub2()
          call sub()
          deallocate(obj)
          deallocate(obj2)
          print*,"Pass"
          contains
          subroutine sub()
          select type(A=>obj%ptr)
            type is(tty)
               if(A%jj .ne. 13) print*,"121"
              if(A%ii .ne. 15) print*,"123"
           class default
              print*,"122"
            end select
          tar%trg%ii = 15
          tar%trg%jj = 13
          select type(A=>obj2%ptr)
            type is(tty)
               if(A%ii .ne. 15) print*,"131"
               if(A%jj .ne. 13) print*,"133"
           class default
              print*,"122"
            end select
        end
          subroutine sub2()
          select type(A=>obj3%ptr)
            type is(tty)
               if(A%jj .ne. 5) print*,"221"
              if(A%ii .ne. 3) print*,"223"
           class default
              print*,"322"
            end select
          tar%trg%ii = 15
          tar%trg%jj = 13
          select type(A=>obj4%ptr)
            type is(tty)
               if(A%ii .ne. 15) print*,"431"
               if(A%jj .ne. 13) print*,"433"
           class default
              print*,"122"
            end select

        end
        end

