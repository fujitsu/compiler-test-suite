module mod
implicit complex(04)(a)
dimension a05(3)
parameter(a01=(-5,-4),a02=-a01,a05=a02)
parameter(a11=abs(a01))
parameter(a12=abs(a02))
parameter(n01=kind(abs(a02)))
parameter(n02=size(abs(a05)))
contains
subroutine s21
a21=abs(a01)
a22=abs(a02)
a03=a01;a04=a02
a31=abs(a03)
a32=abs(a04)
if (a11/=a21.or.a11/=a31.or.a11/=a22.or.a11/=a32.or.a11/=a12)then
 print *,1101
 print *,'a11:',a11
 print *,'a12:',a12
 print *,'a21:',a21
 print *,'a22:',a22
 print *,'a31:',a31
 print *,'a32:',a32
endif
if (n01/=4)print *,1102
if (n02/=3)print *,1103
end subroutine
end
use mod
call s21
print *,'pass'
end

