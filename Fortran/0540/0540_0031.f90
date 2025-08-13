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
       write(14,*) 'Okay'
     end subroutine
     end module
module mx1
private
public::k1
integer::k1=1
contains
  subroutine s(v1,v2)
   use mod01
     use mod02
     type(ext)::v1
     type(base)::v2
 end
end

     program main
     use mod01
     use mod02
use mx1
     type(ext)::var
if (k1/=1) print *,1001
     call var%prc()
print *,'pass'
     end program
