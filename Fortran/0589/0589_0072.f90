module m1
integer, target::trg=1000
integer, target::ctrg=2000
integer,target::rtrg=3000
end module


use m1
interface
        FUNCTION f1 ( tar)
        integer, pointer :: f1
        integer, pointer::f2
        integer, pointer::f3
        integer, target::tar
        end function
        function f2 (tar)
        integer, pointer::f2
        integer, target::tar
        end function
        function f3 (tar)
        integer, pointer::f3
        integer, target::tar
        end function
end interface
f1(trg)=4000
if(trg /=4000) print *,101,trg
f2(ctrg)=10
if(ctrg /=10) print *,102,ctrg
f3(rtrg)=20
if(rtrg /=20) print *,103,rtrg
print *,"Pass"
end
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


