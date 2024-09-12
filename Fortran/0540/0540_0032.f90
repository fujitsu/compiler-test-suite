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
       write(1,*) 'Okay'
     end subroutine
     end module
module mx1
   use mod01
     use mod02, only:ext
private
integer::k1=1
public::k1
     type(ext)::v1
     type(base)::v2
end

     program main
     use mod01
     use mod02, only:ext
use mx1
     type(ext)::var
     call var%prc()
if (k1/=1)print *,1001
print *,'pass'
     end program
