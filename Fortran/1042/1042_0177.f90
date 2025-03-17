  recursive function f1c(d,j) result(r)
  entry    f2c(d,j) result(r)
  integer::xxx(1,1,3)
  integer,save::var(100)
  integer::d(5:,5:,4:)
  integer::r(size(d):4,-1:size(d),-3:+size(d))
  j=j+1
  var=(/(i, i=1,100)/)
  r=reshape((/(var(i),i=1,100)/),(/2,5,7/))
  if (j>100) return
  if (any(f1c(xxx,j)/=reshape(var(1:70),(/2,5,7/))))write(6,*) "NG"
  if (any(f2c(xxx,j)/=reshape(var(1:70),(/2,5,7/))))write(6,*) "NG"
  call xy
  in = if()
  if (in/=1)write(6,*) "NG"
  contains
  subroutine xy
  if (any(f1c(xxx,j)/=reshape(var(1:70),(/2,5,7/))))write(6,*) "NG"
  if (any(f2c(xxx,j)/=reshape(var(1:70),(/2,5,7/))))write(6,*) "NG"
  end subroutine
  function if()
  if (any(f1c(xxx,j)/=reshape(var(1:70),(/2,5,7/))))write(6,*) "NG"
  if (any(f2c(xxx,j)/=reshape(var(1:70),(/2,5,7/))))write(6,*) "NG"
  if =1
  end function
  end function
 interface
  recursive function f1c(d,j) result(r)
  integer,save::var(100)
  integer::d(5:,5:,4:)
  integer::r(size(d):4,-1:size(d),-3:+size(d))
  end function
  recursive function f2c(d,j) result(r)
  integer,save::var(100)
  integer::d(5:,5:,4:)
  integer::r(size(d):4,-1:size(d),-3:+size(d))
  end function
 end interface
  integer::var(100)
  integer::xxx(1,1,3)
  var=(/(i, i=1,100)/)
  j=0
  if (any(f1c(xxx,j)/=reshape(var(1:70),(/2,5,7/))))write(6,*) "NG"
  if (any(f2c(xxx,j)/=reshape(var(1:70),(/2,5,7/))))write(6,*) "NG"
print *,'pass'
end
