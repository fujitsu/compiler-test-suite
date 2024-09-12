          module m1
integer,target::t
                  contains
                  subroutine test03()
                  ifun()=1
                  end subroutine

                  function ifun() result(r)
                  integer,pointer::r
                  r=> t
                 end function
                end
        use m1
ifun()=3
if (t/=3) print *,301

        call test03

  print *,'pass'
      end
