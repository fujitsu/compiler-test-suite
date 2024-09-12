module m1
interface assignment(=)
          module procedure::assign_to
end interface
        
integer, target::trg=100
contains
        function f()
        integer, pointer::f
        f=>trg
        end function
         
        subroutine assign_to(this,val)
        integer,intent(inout)::this
        character,intent(in)::val
        if (val /= 'b') print *,101
        this=ichar(val)
        end subroutine
end module


use m1
character::aa='b'
if (trg /= 100) print *,102
f()=aa
if (trg /= 98) print *,103
print *,"Pass"
end
        
         
