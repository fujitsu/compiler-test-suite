interface
  function fun(arg1,arg2) result(ret)
     integer :: arg1,arg2,ret
  end function
end interface

type xx
 procedure(fun),nopass,pointer:: x1
end type

type,extends(xx):: xx1
 procedure(fun),nopass,pointer:: y1
end type

type(xx):: xp
type(xx1):: xq

xp%x1=>fun
xq%y1=>fun
xq%x1=>fun
if ( 100 .ne. xp%x1(100,1)) print *,'fail'
if ( 200 .ne. xq%y1(100,2)) print *,'fail'
if ( 300 .ne. xq%x1(100,3)) print *,'fail'
if ( 400 .ne. xq%xx%x1(100,4)) print *,'fail'
print *,'pass '
end

function fun(arg1,arg2) result(ret)
   integer :: arg1,arg2,ret
   ret = arg1*arg2
end function
