module mod1
 type ::ty1(i)
    integer,kind::i=1
    integer(i) :: ans1 =1
    integer(i) :: ans2 =1
  end type
  type ::ty2
    integer(4) :: ans1 =1
    integer(4) :: ans2 =1
  end type
  type ::ty3(i)
    integer,kind::i=1
    integer(i) :: ans1 =1
  end type
  type ::ty4
    integer(4) :: ans1 /1/
  end type

end

use mod1
type (ty1(4)) :: str1
type (ty2   ) :: str2
if (str1%ans1.ne.str2%ans1) print *,'err 1'
if (str1%ans2.ne.str2%ans2) print *,'err 1'
print *,'pass'
end
