program main
external ext
call=sub(ext)
print *,'pass'
end
pure function esub4(ext)
interface 
 pure function eee(xxx)
interface
 pure function   xxxa()
 end function  
end interface
procedure(xxxa) :: xxx
 end function
end interface
procedure(eee) :: ext
esub4=1
end
pure function ext(xxx)
interface
 pure function   xxxa()
 end function  
end interface
procedure(xxxa) :: xxx
ext=1
end
pure function ext2()
ext2=1
end
pure function ext1(xxx)
interface
 pure function   xxxa()
 end function  
end interface
procedure(xxxa) :: xxx
ext1=1
end
pure function bbb(xxx)
interface
 pure function   xxxa()
 end function  
end interface
procedure(xxxa) :: xxx

bbb=1
end
module mmm
contains
 pure recursive function sub2(ext) result(siaa)
interface
 pure function   xxxa()
 end function
 pure function eee(xxx)
interface
 pure function   xxxa()
 end function
end interface
procedure(xxxa) :: xxx
 end function
end interface
procedure(eee) :: ext
 entry sub3(ext)
siaa=1
end  function
end
module mod1
use mmm
contains 
 pure recursive function suba2(ext) result(siaa)
interface
 pure function   xxxa()
 end function  
 pure function eee(xxx)
interface
 pure function   xxxa()
 end function  
end interface
procedure(xxxa) :: xxx
 end function
end interface
procedure(eee) :: ext
 entry suba3(ext)
siaa=1
 contains
 pure recursive function sub6(ext) result(siab)
 interface 
  pure function ext2()
  end function
 end interface
interface
 pure function eee(xxx)
interface
 pure function   xxxa()
 end function  
end interface
procedure(xxxa) :: xxx
 end function
end interface
procedure(eee) :: ext
 if (1.eq.2) call= ext2()
siab=1
 end function

 pure recursive function sub5(ext) result(siac)
interface
 pure function eee(xxx)
interface
 pure function   xxxa()
 end function  
end interface
procedure(xxxa) :: xxx
 end function
end interface
procedure(eee) :: ext



 interface 
  pure function ext1(ext)
use mmm
import
interface
 pure function eee(xxx)
interface
 pure function   xxxa()
 end function  
end interface
procedure(xxxa) :: xxx
 end function
end interface
procedure(sub2) :: ext
  end function
 end interface

 if (1.eq.2)call= ext1(sub2)
 if (1.eq.2)call= ext1(sub2)
siac=1
 end function
 end function 
end
pure recursive function sub(ext) result(sia)
use mod1
interface
 pure function eee(xxx)
interface
 pure function   xxxa()
 end function  
end interface
procedure(xxxa) :: xxx
 end function
end interface
procedure(eee) :: ext
interface sss
 pure recursive function esub4(ext)
interface
 pure function eee(xxx)
interface
 pure function   xxxa()
 end function  
end interface
procedure(xxxa) :: xxx
 end function
end interface
procedure(eee) :: ext
 end function 
end interface 
interface aaa
 module procedure sub2
end interface 
interface bbb
 module procedure sub3
end interface 
 interface 
  pure function ext1(ext)
use mmm
interface
 pure function eee(xxx)
interface
 pure function   xxxa()
 end function  
end interface
procedure(xxxa) :: xxx
 end function
end interface
procedure(sub3) :: ext
  end function
 end interface
if (1.eq.2)call= ext1(sub3)
if (1.eq.2)call= ext1(sub3)
sia=1
contains
 pure recursive function sub1(ext) result(sib)
interface
 pure function eee(xxx)
interface
 pure function   xxxa()
 end function  
end interface
procedure(xxxa) :: xxx
 end function
end interface
procedure(eee) :: ext
 sib=1
 end function
end
