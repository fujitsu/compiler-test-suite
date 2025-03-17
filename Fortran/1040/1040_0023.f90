module m1
  integer::xxx(1,1,3)
  contains
  function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(5:,5:,4:)
  integer::r(1,1,size(d))
  r=1
  end function

  subroutine s3
  xxx=f2c(xxx)
  xxx=f1c(xxx)
  end subroutine

  subroutine sssss()
    xxx=f2c(xxx)
    xxx=f1c(xxx)
  contains
  subroutine ssss()
    xxx=f2c(xxx)
    xxx=f1c(xxx)
  end subroutine
  end subroutine
end

use m1
call s3
call sssss
call test1()
call test2()
print *,"pass"
end


module t1
  integer::xxx(1,1,3)
  contains
  function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(5:,5:,4:)
  integer::r(1,1,size(d))
  r=1
  end function
end

module t2
 use t1
 contains
  subroutine s3
  xxx=f2c(xxx)
  xxx=f1c(xxx)
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
  integer::d(5:,5:,4:)
  integer::r(1,1,size(d))
  r=1
  end function
  subroutine s3
  xxx=f2c(xxx)
  xxx=f1c(xxx)
  end subroutine
end

module tt2
 use tt1
end

subroutine test2()
use tt2
call s3
end subroutine
