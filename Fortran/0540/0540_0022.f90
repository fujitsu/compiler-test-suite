     module mod01
     type base
       contains
        procedure,nopass::prc
     end type
     type ext
     end type
     private
     public::k1
integer::k1=1
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
     public::k2
     private
integer::k2=1
     contains
     subroutine prc()
       write(1,*) 'Okay'
     end subroutine
     end module
     module mod0
     use mod01
     use mod02
     end
     use mod0
if (k1/=1) print *,1001
if (k2/=1) print *,1002
print *,'pass'
     end program
