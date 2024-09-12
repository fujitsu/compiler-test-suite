module mo1
integer :: aaa
end
module m02
use mo1
private ::aaa,xxx,ifun
integer :: xxx
intrinsic int
contains
function ifun()
end function
end
module m03
use mo1
use mo1
private ::aaa
end

module moda
use m02
use m03
end
module modb
use moda
end
module modc
use modb
use moda
end
module modd
use modc
use modb
integer :: iiii
private::iiii
end
module modx
integer :: xxx
end 
module mode
use modd
use modc
use modx
private :: xxx
end
module modf
use mode
use modd,only :sss=>int
use modb,only :ppp=>int
use moda,only :zzz=>int,int
use modc,only :www=>int
private::sss,ppp,www,int,zzz
end

module modf1
use modf
use mode
use modd,only :sss=>int
use modb,only :ppp=>int
use moda,only :zzz=>int,int
use modc,only :www=>int
private::sss,ppp,www,int,zzz
end

module modf2
use modf1
use modf
use mode
use modd,only :sss=>int
use modb,only :ppp=>int
use moda,only :zzz=>int,int
use modc,only :www=>int
private::sss,ppp,www,int,zzz
end

module modf3
use modf2
use modf1
use modf
use mode
use modd,only :sss=>int
use modb,only :ppp=>int
use moda,only :zzz=>int,int
use modc,only :www=>int
private::sss,ppp,www,int,zzz
end

module modf4
use modf3
use modf2
use modf1
use modf
use mode
use modd,only :sss=>int
use modb,only :ppp=>int
use moda,only :zzz=>int,int
use modc,only :www=>int
private::sss,ppp,www,int
end

module modf_x
use modf4
use modf3
use modf2
use modf1
use modf
use mode
use modd,only :sss=>int
use modb,only :ppp=>int
use moda,only :zzz=>int,int
use modc,only :www=>int
private::sss,ppp,www,zzz,int
end
module z1
contains
function int()
int=1
end function
end

module xx
use modf1
use modf2
use modf3
use modf4
use z1,only:aaa=>int,zzza=>int,int
private :: int
end
use modf_x
use xx
ii=int(2.0)
ii=zzza()
ii=zzz(1.9)
if (ii.ne.1) print *,'err'
print *,'pass'
end
