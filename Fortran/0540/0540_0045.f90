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
module mx1
contains
  subroutine s(v1,v2)
   use mod01
     use mod02
     type(ext)::v1
     type(base)::v2
 end
end

subroutine s1
use mx1
     use mod01
use mx1
     use mod02
use mx1
     type(ext)::var
     call var%prc()
end
subroutine s2
     use mod01
use mx1
     use mod02
use mx1
     type(ext)::var
     call var%prc()
end
subroutine s3
use mx1
     use mod01
     use mod02
use mx1
     type(ext)::var
     call var%prc()
end
subroutine s4
use mx1
     use mod01
use mx1
     use mod02
     type(ext)::var
     call var%prc()
end
call s1
call s2
call s3
call s4
print *,'pass'
     end program
