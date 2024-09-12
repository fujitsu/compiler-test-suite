integer,target::dd=11
if(f_1() /= 11) print*,101
f(f_1())=10000
if(f_1() /= 10000) print*,102
f(dd)=100
if(dd /= 100) print*,103
print *,"Pass"
contains
        function f(ff)
        integer, pointer::f
        integer, target ::ff
        f=>ff
        end function
        function f_1()
        integer, pointer::f_1
        f_1=>dd 
        end function
end
