module m1
  interface gen
    procedure s1,s2
  end interface
 contains
subroutine s1(a)
 integer,allocatable:: a
if (a/=1) print *,201
end subroutine
subroutine s2(a)
 integer,pointer    :: a
if (a/=2) print *,202
end subroutine
end
use m1
 integer,allocatable:: a
 integer,pointer    :: b
allocate(a,b)
a=1
b=2
call gen(a)
call gen(b)
print *,'pass'
end
