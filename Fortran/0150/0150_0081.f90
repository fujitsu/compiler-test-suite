module m1
integer(8):: a01(2),a02(2), a21(2)
contains
recursive subroutine s1 (n)
  save
  if (n>2) return
block
  integer       :: k01
  a01(n)=loc(k01)
end block
block
  integer       :: k01
  save
  a21(n)=loc(k01)
end block
  n=n+1
  call s1(n)
end subroutine
end
use m1
n=1
call s1(n)
   if (a01(1)==a01(2)) print *,101
   if (a21(1)/=a21(2)) print *,121
print *,'pass'
end
