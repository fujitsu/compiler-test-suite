module m1
    interface
        integer function fun()
        end function
    end interface

    interface gnr
        procedure :: fun
    end interface

    public :: gnr

    type gnr
        logical :: ll
    end type
private

end module

use m1
print*,gnr(.true.)
if(gnr()/=23) print*,102
print*,"pass"
end

integer function fun()
    fun=23
end function
