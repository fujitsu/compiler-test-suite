module m1
  interface prc
    procedure s1,s2
  end interface
  integer::f=0
  contains
  subroutine s1(k)
  f=k+100+f
  end subroutine
  subroutine s2(a)
  f=int(a)+400+f
  end subroutine
end module
subroutine x
use m1
call prc(2)
if (f/=102) print *,101,f
call prc(10.5)
if (f/=512) print *,102,f
end
call x
print *,'pass'
end
