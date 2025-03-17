module m1
  integer::xxx(3,3)
  contains
  function f1c(d) result(r)
  integer::d(:,:)
  integer::r(size(d),size(d))
  r=1
  return
  entry    f2c(d) result(r)
  end function

  subroutine s3
integer yyy(9,9)
  yyy=f2c(xxx)
  yyy=f1c(xxx)
  end subroutine

end

use m1
call s3
call test1()
call test2()
print *,"pass"
end


module t1
  integer::xxx(1,1,3)
  contains
  function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(:,:,:)
  integer::r(size(d),size(d),size(d))
  r=1
  end function
end

module t2
 use t1
 contains
  subroutine s3
  integer yyy(3,3,3)
  yyy=f2c(xxx)
  yyy=f1c(xxx)
  end subroutine
end

subroutine test1()
use t2
call s3
end subroutine


module tt1
  integer::xxx(1,1,3)
  contains
  function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(:,:,:)
  integer::r(size(d),size(d),size(d))
  r=1
  end function
  subroutine s3
  integer yyy(3,3,3)
  yyy=f2c(xxx)
  yyy=f1c(xxx)
  end subroutine
end

module tt2
 use tt1
end

subroutine test2()
use tt2
call s3
end subroutine
