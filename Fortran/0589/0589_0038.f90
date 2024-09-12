integer,target::trg(0:4)=5
f(2)=100
if (all(trg /= [100, 100, 100, 5, 5])) print*,101
f(3)=200
if (all(trg /= [200, 200, 200, 200, 5])) print*,102
print *,"Pass"
contains
        function f(dum)
        integer,pointer::f(:)
        integer :: dum
        f(0:dum)=>trg(dum:0:-1)
        end function
end
