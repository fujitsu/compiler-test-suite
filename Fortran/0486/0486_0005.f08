integer::d(2)=[1,2]
             call foo( d )
                print *,'pass'
                contains
                subroutine foo(d)
                integer,optional::d(2)
                target :: d
                if (.not.present(d)) then
                   print *,101
                end if
               call foo2(d)
              end subroutine
              subroutine foo2(d)
              integer,optional,pointer,intent(in)::d(:)
              if (.not.present(d)) then
                 print *,102
              end if
if (any(d/=[1,2])) print *,701
              end subroutine
              end
