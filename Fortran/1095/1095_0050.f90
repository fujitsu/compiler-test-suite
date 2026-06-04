MODULE m1
 TYPE :: x
   INTEGER ::d=1
 END TYPE
  contains
     subroutine s(a,b)
      CLASS(*) :: a,b
select type(a)
 type is(x)
    a%d=a%d+1
end select
select type(b)
 type is(x)
    b%d=b%d+1
end select
  end 
end 
use m1
type (x)::c,d
call s(c,d)
if (c%d/=2) print *,103
if (d%d/=2) print *,104

print *,'sngg297h : pass'
end
