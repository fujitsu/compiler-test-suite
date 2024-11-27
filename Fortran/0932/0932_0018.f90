module m1
procedure(),protected,pointer,save::ptr
integer::v1=0,v2=0
contains
        subroutine sub(x)
        procedure(),pointer,intent(in)::x
        ptr=>x
        end subroutine

        subroutine sub1()
        v1=v1+555
        end subroutine
        subroutine sub2()
        v2=v1+445
        end subroutine
end module  

use m1
call sub(sub1)
call ptr
if (v1 /= 555) print *,101
call sub(sub2)
call ptr
if (v2 /= 1000) print *,102
print *,"Pass"
end

