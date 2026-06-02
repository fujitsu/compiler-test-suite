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
 end interface
 contains
subroutine set
f2cp=>f2c
bf2cp=>bf2c
af2cp=>af2c
end
  subroutine s3
  integer::yyy(8,8,8)
  yyy=fff(xxx)
  if (yyy(1,2,3).ne.1) print *,'fail'
  yyy=f2cp(xxx)
  if (yyy(1,2,3).ne.1) print *,'fail'
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

call test1()
print *,"pass"
end
