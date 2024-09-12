module mod
  type ty10(ii)
    integer,kind::ii=20
    character(len=3)           :: chk( ii )
  end type
  type ::ty1(i,j)
    integer,kind::i=1
    integer,kind::j=1
    character(len=j)           :: chk( j )
    type(ty10(30)) :: str
  end type
contains
  function afun()
    TYPE(ty1(1,3)) :: afun,afun1
    entry afun1()
    afun%str%chk(1:3)='abc'
  end function
end

use mod
TYPE(ty1(1,3)) ::b
b=afun()
if (b%str%chk(1).ne.'abc') print *,'err1'
if (b%str%chk(2).ne.'abc') print *,'err2'
if (b%str%chk(3).ne.'abc') print *,'err3'
print *,'pass'
end
