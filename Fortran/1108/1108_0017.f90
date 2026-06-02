module m1
integer::i
  interface
pure   function sub1()  bind(c, name="zzz") result(i)
end function sub1
end interface
end module m1
use m1,only:i
interface
   pure  function sub1()  bind(c, name="zzz") result(i)
   end function sub1
end interface
if(sub1()/=-1) print *,'err'
print *,'sngtpri_17:pass'
end
pure  function sub1()  bind(c, name="zzz") result(i)
  i=-1
end function  sub1
