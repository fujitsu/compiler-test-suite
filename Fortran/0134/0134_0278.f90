module m1
interface p
module procedure ap,bp,cp
end interface
contains
logical function chk(x)
y=-x
if (sign(1.0,y)<0.0)then
 chk=.true.
else
 chk=.false.
endif
end function
subroutine ap(a)
implicit real(4)(d),real(8)(e),real(16)(f),complex(4)(a),complex(8)(b),complex(16)(c)
if (chk(0.0))then
if (sign(1.0,aimag(a))>0) print *,1001,a
else
if (sign(1.0,aimag(a))<0) print *,1002,a
endif
end subroutine
subroutine bp(b)
implicit real(4)(d),real(8)(e),real(16)(f),complex(4)(a),complex(8)(b),complex(16)(c)
if (chk(0.0))then
if (sign(1.0_8,aimag(b))>0) print *,2001,b
else
if (sign(1.0_8,aimag(b))<0) print *,2002,b
endif
end subroutine
subroutine cp(c)
implicit real(4)(d),real(8)(e),real(16)(f),complex(4)(a),complex(8)(b),complex(16)(c)
if (chk(0.0))then
if (sign(1.0_16,aimag(c))>0) print *,3001,c
else
if (sign(1.0_16,aimag(c))<0) print *,3002,c
endif
end subroutine
end
subroutine s1
use m1
implicit real(4)(d),real(8)(e),real(16)(f),complex(4)(a),complex(8)(b),complex(16)(c)
integer,parameter::q=16
parameter(a01=(+0,-0.),a02=(+0,-0.e+00),a03=(+0,-0.0e+0_4),a04=(+0,-0.0e-0_4),a05=(+0,-.0))
parameter(b01=(+0,-0.),b02=(+0,-0.d+00),b03=(+0,-0.0e+0_8),b04=(+0,-0.0e-0_8),b05=(+0,-.0_8))
parameter(c01=(+0,-0.),c02=(+0,-0.q+00),c03=(+0,-0.0e+0_q),c04=(+0,-0.0e-0_q),c05=(+0,-.0_q))
parameter(dt1=-(+0.),a06=(+0,dt1))
parameter(et1=-(+0.),b06=(+0,et1))
parameter(ft1=-(+0.),c06=(+0,ft1))
parameter(a11=(+0,-0.),a12=(+0,-0.e+00),a13=(+0,-0.0e+0_4),a14=(+0,-0.0e-0_4),a15=(+0,-.0))
parameter(a16=(+0,-0.),a17=(+0,-0.d+00),a18=(+0,-0.0e+0_8),a19=(+0,-0.0e-0_8),a20=(+0,-.0_8))
parameter(a21=(+0,-0.),a22=(+0,-0.q+00),a23=(+0,-0.0e+0_q),a24=(+0,-0.0e-0_q),a25=(+0,-.0_q))
parameter(a26=(+0,dt1))
parameter(a27=(+0,et1))
parameter(a28=(+0,ft1))
parameter(b11=(+0,-0.),b12=(+0,-0.e+00),b13=(+0,-0.0e+0_4),b14=(+0,-0.0e-0_4),b15=(+0,-.0))
parameter(b16=(+0,-0.),b17=(+0,-0.d+00),b18=(+0,-0.0e+0_8),b19=(+0,-0.0e-0_8),b20=(+0,-.0_8))
parameter(b21=(+0,-0.),b22=(+0,-0.q+00),b23=(+0,-0.0e+0_q),b24=(+0,-0.0e-0_q),b25=(+0,-.0_q))
parameter(b26=(+0,dt1))
parameter(b27=(+0,et1))
parameter(b28=(+0,ft1))
parameter(c11=(+0,-0.),c12=(+0,-0.e+00),c13=(+0,-0.0e+0_4),c14=(+0,-0.0e-0_4),c15=(+0,-.0))
parameter(c16=(+0,-0.),c17=(+0,-0.d+00),c18=(+0,-0.0e+0_8),c19=(+0,-0.0e-0_8),c20=(+0,-.0_8))
parameter(c21=(+0,-0.),c22=(+0,-0.q+00),c23=(+0,-0.0e+0_q),c24=(+0,-0.0e-0_q),c25=(+0,-.0_q))
parameter(c26=(+0,dt1))
parameter(c27=(+0,et1))
parameter(c28=(+0,ft1))
call p(a01)
call p(a02)
call p(a03)
call p(a04)
call p(a05)
call p(a06)
call p(a11)
call p(a12)
call p(a13)
call p(a14)
call p(a15)
call p(a16)
call p(a17)
call p(a18)
call p(a19)
call p(a20)
call p(a21)
call p(a22)
call p(a23)
call p(a24)
call p(a25)
call p(a26)
call p(a27)
call p(a28)
call p(b01)
call p(b02)
call p(b03)
call p(b04)
call p(b05)
call p(b06)
call p(b11)
call p(b12)
call p(b13)
call p(b14)
call p(b15)
call p(b16)
call p(b17)
call p(b18)
call p(b19)
call p(b20)
call p(b21)
call p(b22)
call p(b23)
call p(b24)
call p(b25)
call p(b26)
call p(b27)
call p(b28)
call p(c01)
call p(c02)
call p(c03)
call p(c04)
call p(c05)
call p(c06)
call p(c11)
call p(c12)
call p(c13)
call p(c14)
call p(c15)
call p(c16)
call p(c17)
call p(c18)
call p(c19)
call p(c20)
call p(c21)
call p(c22)
call p(c23)
call p(c24)
call p(c25)
call p(c26)
call p(c27)
call p(c28)
end
call s1
print *,'pass'
end

