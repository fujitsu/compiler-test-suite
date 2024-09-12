use m1
f()=10
if(trg /= 10) print *,101
if(ff() /= 1000) print *,102
if(trg /= 10) print *,103
print *,"Pass"
contains
        function ff()
        integer::ff
        f()=1000
        ff=f()
        end function

end
module m1
integer, target::trg=100
contains
        function f()
        integer, pointer::f
        f=>trg
        end function
end module
