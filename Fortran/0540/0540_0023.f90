     module mod01
     type base
       contains
        procedure,nopass::prc
     end type
private
public::k1
integer::k1=1
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
     private
     public::k2
integer::k2=1
     contains
     subroutine prc()
       write(1,*) 'Okay'
     end subroutine
     end module

module m0
     use mod01
     use mod02
end

     program main
use m0
if (k1/=1) print *,1001
if (k2/=1) print *,1002
print *,'pass'
     end program
