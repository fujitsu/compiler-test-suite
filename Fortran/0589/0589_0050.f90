module m1
integer,target :: trg = 4

contains
        function ifun()
        integer,pointer :: ifun
        ifun=>trg
        end function
end module

program main
ifun(i)=100 + i
if (ifun(10) /= 110.0) print *,101
call test
contains
        subroutine test()
        use m1   
        ifun()=1
        if(trg .ne. 1) print*,"121"
        if(ifun().ne. 1) print*,"122"
        print*,"Pass"
        end subroutine
end
