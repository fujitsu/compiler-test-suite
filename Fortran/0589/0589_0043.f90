integer,pointer::a(:)
procedure(fun),pointer::ptr
allocate(a(5))
a=5
ptr=>fun
ptr(all(a(1:5:1) .eq. (/10,10,10,10,10/)),a(2))=10
if (a(2) /= 10)print *,101
fun(a(1)==5,a(1))=10
if (a(1) /= 5)print *,102
fun(a(1)==10,a(1))=10
if (a(1) /= 10)print *,103
a=50
fun(all(a .eq. (/10,10,10,10,10/)),a(2))=20
if(all(a /= (/50,20,50,50,50/)))print *,104
print *,"Pass"
contains
       function fun(dum,darr)
        integer, pointer::fun
        logical::dum
        integer,target::darr
        if(dum .eqv. .true.)then
        allocate(fun)
        else
        fun=>darr
        end if
       end function
end
