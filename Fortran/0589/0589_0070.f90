module m1
integer, target::trg=1000
integer, target::ctrg=2000
integer,target::rtrg=3000
contains
        FUNCTION f1 ( tar)
        integer, pointer :: f1
        integer, pointer::f2
        integer, pointer::f3
        integer, target::tar
        f1=>tar
        entry f2(tar)
        f2=>tar
        entry f3(tar)
        f3=>tar
        end function

end module

program main
call sub()
contains
        subroutine sub()
        use m1
        f1(trg)=4000
        if(trg /=4000) print *,101,trg
        f2(ctrg)=10
        if(ctrg /=10) print *,102,ctrg
        f3(rtrg)=20
        if(rtrg /=20) print *,103,rtrg
        print *,"Pass"
        end subroutine
end program main
