module mod
 interface int
 function jfun()
 end function
 end interface
 intrinsic int
 intrinsic sin
 end

module mod2
 use mod,sss=>int
 intrinsic int
end

module mod3
 use mod2,int=>sss
 contains
  subroutine sub
   write(1,*)int(1)
  end subroutine
end
use mod3
call sub
rewind 1
read(1,*) k
if (k/=1) print *,2020
print *,'pass'
end
