logical(2),parameter::w=.true.,z=.false.
type uu
logical(2),dimension(1,3,2,4:4)::POP
end type
type (uu) ::u2(3,2)
logical,dimension(2,3)::P1,P2,P3,P4,P5,P6,P7,P8,P9,PA,PB,PC,PD,PE,PF,PG,PH
integer,dimension(2)::VN2,VN3(3)
VN2=(/1,2/);VN3=(/1,2,3/)
u2(3,2)%POP(:,:,:,4)=reshape((/w,z,w,z,w,z/),(/1,3,2/))
N2=2;N3=3;N1=1;N4=4
P1(1:N2,1:N3) = TRANSPOSE(xcos( u2(N3,N2)%POP(N1,:,:,N4) ))
P2(1:N2,1:N3) = TRANSPOSE(xcos( u2(N3,N2)%POP(N1,1:N3,1:N2,N4) ))
P3(1:N2,1:N3) = TRANSPOSE(xcos( u2(N3,N2)%POP(N1,N3-N2:N3,1:N3+N2-N3,N4) ))
P4(1:N2,1:N3) = TRANSPOSE(xcos( u2(N3,N2)%POP(N1,VN3,1:N3+N2-N3,N4) ))
P5(1:N2,1:N3) = TRANSPOSE(xcos( u2(N3,N2)%POP(N1,N3-N2:N3,VN2,N4) ))
P6(1:N2,1:N3) = TRANSPOSE(xcos( u2(N3,N2)%POP(N1,VN3,VN2,N4) ))
P7(1:N2,1:N3) = TRANSPOSE(xcos( u2(N3,N2)%POP(N1,VN3(N3-N2:N3:N3-N2),VN2(N3-N2:N3-(N3-N2):N3-N2),N4) ))
P8(1:N2,1:N3) = TRANSPOSE(xcos( (reshape((/w,z,w,z,w,z/),(/3,2/)))))
P9(1:N2,1:N3) = TRANSPOSE(xcos( reshape((/w,z,w,z,w,z/),(/3,2/))))
PA(1:N2,1:N3) = TRANSPOSE(xcos( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,4)/),(/3,2/))))
PB(1:N2,1:N3) = TRANSPOSE(xcos( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,4).and.u2(3,2)%POP(1,VN3,VN2,4).and.u2(3,2)%POP(1,:,:,4)/),(/3,2/))))
PC(1:N2,1:N3) = TRANSPOSE(xcos( (reshape((/w,z,w,z,w,z/),(/N3,N2/)))))
PD(1:N2,1:N3) = TRANSPOSE(xcos( reshape((/w,z,w,z,w,z/),(/N3,N2/))))
PE(1:N2,1:N3) = TRANSPOSE(xcos( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,4)/),(/N3,N2/))))
PF(1:N2,1:N3) = TRANSPOSE(xcos( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,4).and.u2(3,2)%POP(1,VN3,VN2,4).and.u2(3,2)%POP(1,:,:,4)/),(/N3,N2/))))
PG(1:N2,1:N3) = TRANSPOSE(xcos( u2(N3,N2)%POP(N1,1:3,1:2,N4) ))
PH(1:N2,1:N3) = TRANSPOSE(xcos( u2(N3,N2)%POP(N1,1:3:N3-N2,1:N2:N3-N2,N4) ))
CALL s(TRANSPOSE(xcos( u2(N3,N2)%POP(N1,:,:,N4) )))
CALL s(TRANSPOSE(xcos( u2(N3,N2)%POP(N1,1:N3,1:N2,N4) )))
CALL s(TRANSPOSE(xcos( u2(N3,N2)%POP(N1,N3-N2:N3,1:N3+N2-N3,N4) )))
CALL s(TRANSPOSE(xcos( u2(N3,N2)%POP(N1,VN3,1:N3+N2-N3,N4) )))
CALL s(TRANSPOSE(xcos( u2(N3,N2)%POP(N1,N3-N2:N3,VN2,N4) )))
CALL s(TRANSPOSE(xcos( u2(N3,N2)%POP(N1,VN3,VN2,N4) )))
CALL s(TRANSPOSE(xcos( u2(N3,N2)%POP(N1,VN3(N3-N2:N3:N3-N2),VN2(N3-N2:N3-(N3-N2):N3-N2),N4) )))
call s(TRANSPOSE(xcos( (reshape((/w,z,w,z,w,z/),(/3,2/))))))
call s(TRANSPOSE(xcos( reshape((/w,z,w,z,w,z/),(/3,2/)))))
call s( TRANSPOSE(xcos( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,N4)/),(/3,2/)))))
call s(TRANSPOSE(xcos( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,N4).and.u2(3,2)%POP(1,VN3,VN2,N4).and.u2(3,2)%POP(1,:,:,4)/),(/3,2/)))))
call s( TRANSPOSE(xcos( (reshape((/w,z,w,z,w,z/),(/N3,N2/))))))
call s( TRANSPOSE(xcos( reshape((/w,z,w,z,w,z/),(/N3,N2/)))))
call s( TRANSPOSE(xcos( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,N4)/),(/N3,N2/)))))
call s( TRANSPOSE(xcos( reshape((/u2(N3,N2)%POP(N1,1:N3,1:N2,N4).and.u2(3,2)%POP(1,VN3,VN2,4).and.u2(3,2)%POP(1,:,:,4)/),(/N3,N2/)))))
call s( TRANSPOSE(xcos( u2(N3,N2)%POP(N1,1:3,1:2,N4) )))
call s( TRANSPOSE(xcos( u2(N3,N2)%POP(N1,1:3:N3-N2,1:N2:N3-N2,4) )))
if (any((P1.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
if (any((P2.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
if (any((P3.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
if (any((P4.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
if (any((P5.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
if (any((P6.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
if (any((P7.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
if (any((P8.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
if (any((P9.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
if (any((PA.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
if (any((PB.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
if (any((PC.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
if (any((PD.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
if (any((PE.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
if (any((PF.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
if (any((PG.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
if (any((PH.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
print *,'pass'
contains
subroutine s(x)
logical(2),dimension(:,:)::x
if (any(shape(x)/=(/2,3/)))write(6,*) "NG"
if (any((x.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
end subroutine
elemental function xcos(x)
logical(2),intent(in)::x
logical(2)::xcos
xcos=(x)
end function
end
