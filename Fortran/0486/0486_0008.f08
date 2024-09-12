             call foo( )
                print *,'pass'
                contains
                subroutine foo(d)
                integer,optional::d(2)
                target :: d
               if (present(d)) then
                   print *,101
                end if
               call foo2(d)
              end subroutine
              subroutine foo2(d)
              integer,optional,pointer,intent(in)::d(:)
             if (present(d)) then
   else
                 print *,102
              end if
             end subroutine
              end
