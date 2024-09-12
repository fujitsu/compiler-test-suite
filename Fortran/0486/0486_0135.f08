            interface 
               function foo(d)
                  real,intent(in):: d
               end function
            end interface
           PROCEDURE( foo ) , pointer :: proc_ptr

call s1
print *,'pass'
end
subroutine s1
            interface 
               function fooo(d)
                  real,intent(in):: d
               end function
            end interface
           PROCEDURE( fooo ) , pointer :: proc_ptr

proc_ptr=> fooo
if (proc_ptr(1.)/=1.) print *,201
end
               function fooo(d)
                  real,intent(in):: d
fooo=d
               end function
