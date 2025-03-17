  subroutine s2
 interface
  function f1c(d) result(r)
  integer,save::var(100)
  integer::d(5:,5:,4:)
  integer::r(size(d):4,-1:size(d),-3:+size(d))
  end function
  function f2c(d) result(r)
  integer,save::var(100)
  integer::d(5:,5:,4:)
  integer::r(size(d):4,-1:size(d),-3:+size(d))
  end function
 end interface
  integer,save::var(100)
  integer::xxx(1,1,3)
  var=(/(i, i=1,100)/)
  if (any(f1c(xxx)/=reshape(var(1:70),(/2,5,7/))))write(6,*) "NG"
  if (any(f2c(xxx)/=reshape(var(1:70),(/2,5,7/))))write(6,*) "NG"
  end subroutine
  function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer,save::var(100)
  integer::d(5:,5:,4:)
  integer::r(size(d):4,-1:size(d),-3:+size(d))
  var=(/(i, i=1,100)/)
  r=reshape((/(var(i),i=1,100)/),(/2,5,7/))
  end function
call s2
print *,'pass'
end
