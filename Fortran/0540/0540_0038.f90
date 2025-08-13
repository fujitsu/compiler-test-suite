     module mod01
     type base
       contains
        procedure,nopass::prc
     end type
     type ext
     end type
     public::base
     private::ext
     contains
     subroutine prc()
       write(6,*) 'NG call'
     end subroutine
     end module

     module mod02
     type base
     end type
     type, extends(base)::ext
       contains
        procedure,nopass::prc
     end type
     contains
     subroutine prc()
       write(21,*) 'Okay'
     end subroutine
     end module
module m0
     use mod01
     use mod02, only:ext
integer::k1=1
private
public::k1
end

     program main
use m0
     use mod01
     use mod02, only:ext
     type(ext)::var
     call var%prc()
print *,'pass'
     end program
