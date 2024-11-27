real,allocatable,dimension(:,:)::POP
real,allocatable,dimension(:,:)::P11,P12,P13,P14,P15,P16,P17,P18,P19,P1A,P1B,P1C,P1D,P1E,P1F,P1G,P1H
integer,allocatable,dimension(:)::VN2,VN3
allocate(POP(3,2))
allocate(P11(2,3),P12(2,3),P13(2,3),P14(2,3),P15(2,3),P16(2,3),P17(2,3),P18(2,3),P19(2,3),P1A(2,3),P1B(2,3),P1C(2,3),P1D(2,3),P1E(2,3),P1F(2,3),P1G(2,3),P1H(2,3))
allocate(VN2(2),VN3(3));VN2=(/1,2/);VN3=(/1,2,3/)
POP=reshape((/(i,i=1,6)/),(/3,2/))
N2=2;N3=3
P11(1:N2,1:N3) = TRANSPOSE( xcos(POP(:,:)))
P12(1:N2,1:N3) = TRANSPOSE( xcos(POP(1:N3,1:N2) ))
P13(1:N2,1:N3) = TRANSPOSE( xcos(POP(N3-N2:N3,1:N3+N2-N3) ))
P14(1:N2,1:N3) = TRANSPOSE( xcos(POP(VN3,1:N3+N2-N3) ))
P15(1:N2,1:N3) = TRANSPOSE( xcos(POP(N3-N2:N3,VN2) ))
P16(1:N2,1:N3) = TRANSPOSE( xcos(POP(VN3,VN2) ))
P17(1:N2,1:N3) = TRANSPOSE( xcos(POP(VN3(N3-N2:N3:N3-N2),VN2(N3-N2:N3-(N3-N2):N3-N2)) ))
P18(1:N2,1:N3) = TRANSPOSE( xcos(real(reshape((/(i,i=1,6)/),(/3,2/)))))
P19(1:N2,1:N3) = TRANSPOSE( xcos(reshape((/1.,2.,3.,4.,5.,6./),(/3,2/))))
P1A(1:N2,1:N3) = TRANSPOSE( xcos(reshape((/POP(1:N3,1:N2)/),(/3,2/))))
P1B(1:N2,1:N3) = TRANSPOSE( xcos(reshape((/POP(1:N3,1:N2)+POP(VN3,VN2)-POP(:,:)/),(/3,2/))))
P1C(1:N2,1:N3) = TRANSPOSE( xcos(real(reshape((/(i,i=1,6)/),(/N3,N2/)))))
P1D(1:N2,1:N3) = TRANSPOSE( xcos(reshape((/1.,2.,3.,4.,5.,6./),(/N3,N2/))))
P1E(1:N2,1:N3) = TRANSPOSE( xcos(reshape((/POP(1:N3,1:N2)/),(/N3,N2/))))
P1F(1:N2,1:N3) = TRANSPOSE( xcos(reshape((/POP(1:N3,1:N2)+POP(VN3,VN2)-POP(:,:)/),(/N3,N2/))))
P1G(1:N2,1:N3) = TRANSPOSE( xcos(POP(1:3,1:2) ))
P1H(1:N2,1:N3) = TRANSPOSE( xcos(POP(1:3:N3-N2,1:N2:N3-N2) ))
call t(TRANSPOSE( xcos(POP(:,:)) ))
call t(TRANSPOSE( xcos(POP(1:N3,1:N2) )))
call t(TRANSPOSE( xcos(POP(N3-N2:N3,1:N3+N2-N3) )))
call t(TRANSPOSE( xcos(POP(VN3,1:N3+N2-N3) )))
call t(TRANSPOSE( xcos(POP(N3-N2:N3,VN2) )))
call t(TRANSPOSE( xcos(POP(VN3,VN2) )))
call t(TRANSPOSE( xcos(POP(VN3(N3-N2:N3:N3-N2),VN2(N3-N2:N3-(N3-N2):N3-N2)) )))
call t(TRANSPOSE( xcos(real(reshape((/(i,i=1,6)/),(/3,2/))))))
call t(TRANSPOSE( xcos(reshape((/1.,2.,3.,4.,5.,6./),(/3,2/)))))
call t(TRANSPOSE( xcos(reshape((/POP(1:N3,1:N2)/),(/3,2/)))))
call t(TRANSPOSE( xcos(reshape((/POP(1:N3,1:N2)+POP(VN3,VN2)-POP(:,:)/),(/3,2/)))))
call t(TRANSPOSE( xcos(real(reshape((/(i,i=1,6)/),(/N3,N2/))))))
call t(TRANSPOSE( xcos(reshape((/1.,2.,3.,4.,5.,6./),(/N3,N2/)))))
call t(TRANSPOSE( xcos(reshape((/POP(1:N3,1:N2)/),(/N3,N2/)))))
call t(TRANSPOSE( xcos(reshape((/POP(1:N3,1:N2)+POP(VN3,VN2)-POP(:,:)/),(/N3,N2/)))))
call t(TRANSPOSE( xcos(POP(1:3,1:2) )))
call t(TRANSPOSE( xcos(POP(1:3:N3-N2,1:N2:N3-N2) )))
if (any(abs(P11-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P12-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P13-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P14-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P15-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P16-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P17-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P18-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P19-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P1A-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P1B-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P1C-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P1D-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P1E-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P1F-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P1G-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
if (any(abs(P1H-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
print *,'pass'
contains
subroutine s(x)
real,dimension(:,:)::x
if (any(shape(x)/=(/2,3/)))write(6,*) "NG"
if (any(abs(x-reshape((/1,4,2,5,3,6/),(/2,3/)))>0.001))write(6,*) "NG"
end subroutine
subroutine t(x)
real,dimension(:,:)::x
if (any(shape(x)/=(/2,3/)))write(6,*) "NG"
if (any(abs(x-xcos(0.+reshape((/1,4,2,5,3,6/),(/2,3/))))>0.001))write(6,*) "NG"
end subroutine
elemental function xcos(x)
real,intent(in)::x
real::xcos
xcos=cos(x)
end function
end
