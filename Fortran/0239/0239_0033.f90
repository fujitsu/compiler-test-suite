subroutine s1
implicit none
real(8)::X=2.0,Y=3.0, THETA=0.1 , A=4.0 , ZZ,z1,z2,z3,z4
ASSOCIATE ( Z => EXP(-(X**2+Y**2)) * COS(THETA) )
write(11,*)  A+Z, A-Z
END ASSOCIATE

ZZ = EXP(-(X**2+Y**2)) * COS(THETA) 
write(11,*)  A+ZZ, A-ZZ
rewind 11
read(11,*) z1,z2
read(11,*) z3,z4
if (abs(z1-z3)>0.0000000001_8) print *,1001,z1,z3,z1-z3
if (abs(z2-z4)>0.0000000001_8) print *,1002,z2,z4,z2-z4
end
subroutine s2
type x0
  integer::DV(3)
end type
type x1
  integer::cc
  type(x0) ::C
end type
type::x2
  integer::bbb
  type(x1)::B(3,3)
end type
type(x2)::AX
type(x2)::AZ
  
I=2;J=3;N=2
AX%B(2,3)%C%DV=[3,5,7]

ASSOCIATE ( XC => AX%B(I,J)%C )
XC%DV = XC%DV + PRODUCT(XC%DV(1:N))
END ASSOCIATE

AZ%B(2,3)%C%DV=[3,5,7]

AZ%B(I,J)%C%DV = AZ%B(I,J)%C%DV + PRODUCT(AZ%B(I,J)%C%DV(1:N))

if (any(AZ%B(I,J)%C%DV  /= AZ%B(I,J)%C%DV)) print *,2001
end

subroutine s3
type x0
  integer::EV(3)
end type
type x1
  integer::cc
  type(x0) ::C
end type
type::x2
  integer::bbb
  type(x1)::B(3,3)
end type
type(x2)::AX
type(x2)::AZ

I=2;N=3

do II=1,3
AX%B(2,II)%C%EV=[3,5,7]
AZ%B(2,II)%C%EV=[3,5,7]
end do
ASSOCIATE ( ARRAY => AX%B(I,:)%C )
ARRAY(N)%EV = ARRAY(N-1)%EV
END ASSOCIATE

call  sub(AZ%B(I,:)%C,N)

do II=1,3
if (any(AX%B(2,II)%C%EV/= AZ%B(2,II)%C%EV)) print *,3001,II
end do
contains
subroutine sub(C,N)
type(x0)::c(:)
C(N)%EV=C(N-1)%EV
end subroutine
end

subroutine s4
type x0
  integer::EV(3)
end type
type x1
  integer::D
  type(x0) ::C
end type
type::x2
  integer::W
  integer::bbb
  type(x1)::B(3,3)
end type
type(x2)::RESULT(2,3),RESULTx(2,3)
type(x2)::AX,AY
type(x2)::BX,BY

I=2;N=3;J=3
X=2;Y=3

AX%B(2,3)%D=20
AY%B(2,3)%D=30
ASSOCIATE ( W => RESULT(I,J)%W, ZX => AX%B(I,J)%D, ZY => AY%B(I,J)%D )
W = ZX*X + ZY*Y
END ASSOCIATE

BX%B(2,3)%D=20
BY%B(2,3)%D=30
RESULTx(I,J)%W = BX%B(I,J)%D*X + BY%B(I,J)%D*Y

if (RESULT(I,J)%W/= RESULTx(I,J)%W) print *,4001
end
!
!
call s1
call s2
call s3
call s4
print *,'pass'
end
