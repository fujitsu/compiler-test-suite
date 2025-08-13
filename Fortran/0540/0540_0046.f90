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
       write(29,*) 'Okay'
     end subroutine
     end module
module mx1
private
integer::k1=1
public::k1
contains
  subroutine s(v1,v2)
   use mod01
     use mod02, only:ext
     type(ext)::v1
     type(base)::v2
 end
end

subroutine s1
use mx1
     use mod01
     use mod02, only:ext
     type(ext)::var
     call var%prc()
if (k1/=1)print *,1001
end
subroutine s2
use mx1
     use mod01
use mx1
     use mod02, only:ext
     type(ext)::var
     call var%prc()
if (k1/=1)print *,1001
end
subroutine s3
use mx1
     use mod01
use mx1
     use mod02, only:ext
use mx1
     type(ext)::var
     call var%prc()
if (k1/=1)print *,1001
end
subroutine s4
     use mod01
use mx1
     use mod02, only:ext
     type(ext)::var
     call var%prc()
if (k1/=1)print *,1001
end
subroutine s5
     use mod01
use mx1
     use mod02, only:ext
use mx1
     type(ext)::var
     call var%prc()
if (k1/=1)print *,1001
end
call s1
call s2
call s3
call s4
call s5
print *,'pass'
     end program
