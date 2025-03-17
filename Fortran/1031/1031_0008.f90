        subroutine test1
        type TAG
          integer i
          integer j
        end type
        type (TAG) st1,st2
        parameter(st2 = TAG(1,2))
        st1 = st2
        if( st1%j == 2 .and. st1%i == 1 ) then
        else
          print *,' TEST 1 NG '
        endif
        end
        call test1
        print *,'pass' 
        end
