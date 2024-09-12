#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0D-13 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0D-13)
module m01
implicit integer(a)
dimension a05(3)
parameter(a01=-5,a02=-a01,a05=a02)
parameter(a11=abs(a01))
parameter(a12=abs(a02))
parameter(n01=kind(abs(a02)))
parameter(n02=size(abs(a05)))
end
module m11
implicit real(04)(a)
dimension a05(3)
parameter(a01=-5,a02=-a01,a05=a02)
parameter(a11=abs(a01))
parameter(a12=abs(a02))
parameter(n01=kind(abs(a02)))
parameter(n02=size(abs(a05)))
end
module m12
implicit real(08)(a)
dimension a05(3)
parameter(a01=-5,a02=-a01,a05=a02)
parameter(a11=abs(a01))
parameter(a12=abs(a02))
parameter(n01=kind(abs(a02)))
parameter(n02=size(abs(a05)))
end
module m13
implicit real(16)(a)
dimension a05(3)
parameter(a01=-5,a02=-a01,a05=a02)
parameter(a11=abs(a01))
parameter(a12=abs(a02))
parameter(n01=kind(abs(a02)))
parameter(n02=size(abs(a05)))
end
module m21
implicit complex(04)(a)
dimension a05(3)
parameter(a01=(-5,-4),a02=-a01,a05=a02)
parameter(a11=abs(a01))
parameter(a12=abs(a02))
parameter(n01=kind(abs(a02)))
parameter(n02=size(abs(a05)))
end
module m22
implicit complex(08)(a)
dimension a05(3)
parameter(a01=(-5,-4),a02=-a01,a05=a02)
parameter(a11=abs(a01))
parameter(a12=abs(a02))
parameter(n01=kind(abs(a02)))
parameter(n02=size(abs(a05)))
end
module m23
implicit complex(16)(a)
dimension a05(3)
parameter(a01=(-5,-4),a02=-a01,a05=a02)
parameter(a11=abs(a01))
parameter(a12=abs(a02))
parameter(n01=kind(abs(a02)))
parameter(n02=size(abs(a05)))
end
subroutine s01
use m01
a21=abs(a01)
a22=abs(a02)
a03=a01;a04=a02
a31=abs(a03)
a32=abs(a04)
if (a11/=a21.or.a11/=a31.or.a11/=a22.or.a11/=a32.or.a11/=a12)print *,101,a11,a21,a31
if (n01/=4)print *,102
if (n02/=3)print *,103
end
subroutine s11
use m11
a21=abs(a01)
a22=abs(a02)
a03=a01;a04=a02
a31=abs(a03)
a32=abs(a04)
if (a11/=a21.or.a11/=a31.or.a11/=a22.or.a11/=a32.or.a11/=a12)print *,201,a11,a21,a31
if (n01/=4)print *,202
if (n02/=3)print *,203
end
subroutine s12
use m12
a21=abs(a01)
a22=abs(a02)
a03=a01;a04=a02
a31=abs(a03)
a32=abs(a04)
if (a11/=a21.or.a11/=a31.or.a11/=a22.or.a11/=a32.or.a11/=a12)print *,301,a11,a21,a31
if (n01/=8)print *,302
if (n02/=3)print *,303
end
subroutine s13
use m13
a21=abs(a01)
a22=abs(a02)
a03=a01;a04=a02
a31=abs(a03)
a32=abs(a04)
if (a11/=a21.or.a11/=a31.or.a11/=a22.or.a11/=a32.or.a11/=a12)print *,401,a11,a21,a31
if (n01/=16)print *,402
if (n02/=3)print *,403
end
subroutine s21
use m21
implicit complex(04)(a)
a21=abs(a01)
a22=abs(a02)
a03=a01;a04=a02
a31=abs(a03)
a32=abs(a04)
if (a11/=a21)print *,11011
if (a11/=a31)print *,11012
if (a11/=a22)print *,11013
if (a11/=a32)print *,11014
if (a11/=a12)print *,11015
if (a11/=a21.or.a11/=a31.or.a11/=a22.or.a11/=a32.or.a11/=a12)print *,1101,a11,a21,a31
if (n01/=4)print *,1102
if (n02/=3)print *,1103
end
subroutine s22
use m22
implicit complex(08)(a)
a21=abs(a01)
a22=abs(a02)
a03=a01;a04=a02
a31=abs(a03)
a32=abs(a04)
if (a11/=a21.or.a11/=a31.or.a11/=a22.or.a11/=a32.or.a11/=a12)print *,1201,a11,a21,a31
if (n01/=8)print *,1202
if (n02/=3)print *,1203
end
subroutine s23
use m23
implicit complex(16)(a)
a21=abs(a01)
a22=abs(a02)
a03=a01;a04=a02
a31=abs(a03)
a32=abs(a04)
if (a11/=a21.or.a11/=a22.or.a11/=a12)print *,14011,a11,a21,a31
if(EQUAL_CHECK(a31,a11)) print *,14012,a11,a31 
if(EQUAL_CHECK(a32,a11)) print *,14013,a11,a31
if (n01/=16)print *,1402
if (n02/=3)print *,1403
end
call s01
call s11
call s12
call s13
call s21
call s22
call s23
print *,'pass'
end

