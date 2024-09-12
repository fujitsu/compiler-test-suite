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
contains
  subroutine s(v1,v2)
   use mod01
     use mod02, only:ext
     type(ext)::v1
     type(base)::v2
 end
end

     subroutine c1
     use mod01
use mx1
     use mod02, only:ext
use mx1
     type(ext)::var
     call var%prc()
end
     subroutine c2
use mx1
     use mod01
use mx1
     use mod02, only:ext
use mx1
     type(ext)::var
     call var%prc()
end
     subroutine c3
     use mod01
use mx1
     use mod02, only:ext
     type(ext)::var
     call var%prc()
end
call c1
call c2
call c3
print *,'pass'
     end program
