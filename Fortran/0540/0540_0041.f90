     module mod01
     type base
       contains
        procedure,nopass::prc
     end type
     contains
     subroutine prc()
       write(6,*)'NG call'
     end subroutine
     end module

     module mod02
     type base
       contains
        procedure,nopass::prc
     end type
     type, extends(base)::ext
     end type
     private::base
     public::ext
     contains
     subroutine prc()
       write(1,*) 'Okay'
     end subroutine
     end module
module m0
     use mod01
     use mod02
integer::k1=1
private
public::k1
end

     program main
     use mod01
     use mod02
use m0
     type(ext)::var
     call var%prc()
print *,'pass'
     end program
