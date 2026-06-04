module t1
  integer::xxx(2,2,2)
  integer::xx(2,2)
  integer::x(2)
  contains
  function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(:,:,:)
  integer::r(size(d),size(d),size(d))
  r=1
  end function
  function af1c(d) result(r)
  entry    af2c(d) result(r)
  integer::d(:,:)
  integer::r(size(d),size(d))
  r=2
  end function
  function bf1c(d) result(r)
  entry    bf2c(d) result(r)
  integer,intent(in)::d(:)
  integer::r(size(d))
  r=3
  end function
end

module t2
 use t1
procedure(f2c),pointer::f2cp
procedure(af2c),pointer::af2cp
procedure(bf2c),pointer::bf2cp
 interface fff
  procedure f2cp
  procedure af2cp
  procedure bf2cp
 end interface
 contains
subroutine set
f2cp=>f2c
bf2cp=>bf2c
af2cp=>af2c
end
  subroutine s3
  integer::yyy(8,8,8)
  integer::yy(4,4)
  integer::y(2)
  yyy=fff(xxx)
  if (yyy(1,2,3).ne.1) print *,'fail'
  yyy=f2c(xxx)
  if (yyy(1,2,3).ne.1) print *,'fail'
  yyy=f1c(xxx)
  if (yyy(1,2,3).ne.1) print *,'fail'
  yy=fff(xx)
  if (yy(1,2).ne.2) print *,'fail'
  yy=af2c(xx)
  if (yy(1,2).ne.2) print *,'fail'
  yy=af1c(xx)
  if (yy(1,2).ne.2) print *,'fail'
  y=fff(x)
  if (y(1).ne.3) print *,'fail'
  y=bf2c(x)
  if (y(1).ne.3) print *,'fail'
  y=bf1c(x)
  if (y(1).ne.3) print *,'fail'
  end subroutine
end

subroutine test1()
use t2
call set
xxx=1
xx=1
x=1
call s3
end subroutine

module t1a
  integer::xxx(2,2,2)
  contains
  function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(:,:,:)
  integer::r(size(d),size(d),size(d))
  r=1
  end function
end

module t1aa
use t1a
end module

module t2a
 use t1aa
  procedure(f2c),pointer::f2cp
 interface fff
  procedure f2cp
 end interface
 contains
  subroutine s3
  integer::yyy(8,8,8)
  yyy=fff(xxx)
  if (yyy(1,2,3).ne.1) print *,'fail'
  yyy=f2c(xxx)
  if (yyy(1,2,3).ne.1) print *,'fail'
  yyy=f1c(xxx)
  end subroutine
end

subroutine test2()
use t2a
f2cp=>f2c
call s3
end subroutine

module t1b
  integer::xxx(2,2,2)
  contains
  function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(:,:,:)
  integer::r(size(d),size(d),size(d))
  r=1
  end function
end

module t1ab
use t1b
  procedure(f2c),pointer::f2cp
 interface fff
  procedure f2cp
 end interface
end module

module t2b
 use t1ab
 contains
  subroutine s3
  integer::yyy(8,8,8)
  yyy=fff(xxx)
  if (yyy(1,2,3).ne.1) print *,'fail'
  yyy=f2c(xxx)
  if (yyy(1,2,3).ne.1) print *,'fail'
  yyy=f1c(xxx)
  end subroutine
end

subroutine test3()
use t2b
f2cp=>f2c
call s3
end subroutine

module t1c
  procedure(f2c),pointer::f2cp
 interface fff
  procedure f2cp
 end interface
  integer::xxx(2,2,2)
  contains
  function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(:,:,:)
  integer::r(size(d),size(d),size(d))
  r=1
  end function
end

module t1ac
use t1c
end module

module t2c
 use t1ac
 contains
  subroutine s3
  integer::yyy(8,8,8)
  yyy=fff(xxx)
  if (yyy(1,2,3).ne.1) print *,'fail'
  yyy=f2c(xxx)
  if (yyy(1,2,3).ne.1) print *,'fail'
  yyy=f1c(xxx)
  end subroutine
end

subroutine test4()
use t2c
f2cp=>f2c
call s3
end subroutine

module t1d
  procedure(f2c),pointer::f2cp
 interface fff
  procedure f2cp
 end interface
  integer::xxx(2,2,2)
  contains
  function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(:,:,:)
  integer::r(size(d),size(d),size(d))
  r=1
  end function
end

module t1ad
use t1d
end module

module t2d
 use t1ac
 contains
  function f1ca(d) result(r)
  entry    f2ca(d) result(r)
  integer::d(:,:,:)
  integer::r(size(d),size(d),size(d))
  r=1
  end function
  subroutine s3
  integer::yyy(8,8,8)
  yyy=fff(xxx)
  if (yyy(1,2,3).ne.1) print *,'fail'
  yyy=f2ca(xxx)
  if (yyy(1,2,3).ne.1) print *,'fail'
  yyy=f1c(xxx)
  end subroutine
end

subroutine test5()
use t2d
f2cp=>f2c
call s3
end subroutine
call test1()
call test2()
call test3()
call test4()
call test5()
print *,"pass"
end
