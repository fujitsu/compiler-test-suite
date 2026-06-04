module m1
integer::n
interface 
  subroutine sub1(k)
  end subroutine
  subroutine sub2(a)
  end subroutine
end interface
procedure(sub2):: sub22
interface gen
  procedure  sub1
  procedure  sub22
end interface
contains
subroutine s1
call gen(1)
    if (n/=101) print *,111
call gen(2.0)
    if (n/=102) print *,112
end subroutine
end
use m1
call s1
print *,'pass'
end
  
  subroutine sub1(k)
    use m1
    if (k/=1) print *,101
    n=101
  end subroutine
  subroutine sub22(a)
    use m1
    if (abs(a-2)>0.0001) print *,102
    n=102
  end subroutine
