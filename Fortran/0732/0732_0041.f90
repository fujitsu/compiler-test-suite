logical(8),parameter::w=.true.,z=.false.
logical(8),allocatable,dimension(:,:)::POP
logical(8),allocatable,dimension(:,:)::P1,P2,P3,P4,P5,P6,P7,P8,P9,PA,PB,PC,PD,PE,PF,PG,PH
integer,allocatable,dimension(:)::VN2,VN3
allocate(POP(3,2))
allocate(P1(2,3),P2(2,3),P3(2,3),P4(2,3),P5(2,3),P6(2,3),P7(2,3),P8(2,3),P9(2,3),PA(2,3),PB(2,3),PC(2,3),PD(2,3),PE(2,3),PF(2,3),PG(2,3),PH(2,3))
allocate(VN2(2),VN3(3));VN2=(/1,2/);VN3=(/1,2,3/)
POP=reshape((/w,z,w,z,w,z/),(/3,2/))
N2=2;N3=3
P1(1:N2,1:N3) = TRANSPOSE( POP(:,:) )
P2(1:N2,1:N3) = TRANSPOSE( POP(1:N3,1:N2) )
P3(1:N2,1:N3) = TRANSPOSE( POP(N3-N2:N3,1:N3+N2-N3) )
P4(1:N2,1:N3) = TRANSPOSE( POP(VN3,1:N3+N2-N3) )
P5(1:N2,1:N3) = TRANSPOSE( POP(N3-N2:N3,VN2) )
P6(1:N2,1:N3) = TRANSPOSE( POP(VN3,VN2) )
P7(1:N2,1:N3) = TRANSPOSE( POP(VN3(N3-N2:N3:N3-N2),VN2(N3-N2:N3-(N3-N2):N3-N2)) )
P8(1:N2,1:N3) = TRANSPOSE( logical(reshape((/w,z,w,z,w,z/),(/3,2/)),8))
P9(1:N2,1:N3) = TRANSPOSE( reshape((/w,z,w,z,w,z/),(/3,2/)))
PA(1:N2,1:N3) = TRANSPOSE( reshape((/POP(1:N3,1:N2)/),(/3,2/)))
PB(1:N2,1:N3) = TRANSPOSE( reshape((/POP(1:N3,1:N2).and.POP(VN3,VN2).and.POP(:,:)/),(/3,2/)))
PC(1:N2,1:N3) = TRANSPOSE( logical(reshape((/w,z,w,z,w,z/),(/N3,N2/)),8))
PD(1:N2,1:N3) = TRANSPOSE( reshape((/w,z,w,z,w,z/),(/N3,N2/)))
PE(1:N2,1:N3) = TRANSPOSE( reshape((/POP(1:N3,1:N2)/),(/N3,N2/)))
PF(1:N2,1:N3) = TRANSPOSE( reshape((/POP(1:N3,1:N2).and.POP(VN3,VN2).and.POP(:,:)/),(/N3,N2/)))
PG(1:N2,1:N3) = TRANSPOSE( POP(1:3,1:2) )
PH(1:N2,1:N3) = TRANSPOSE( POP(1:3:N3-N2,1:N2:N3-N2) )
CALL s(TRANSPOSE( POP(:,:) ))
CALL s(TRANSPOSE( POP(1:N3,1:N2) ))
CALL s(TRANSPOSE( POP(N3-N2:N3,1:N3+N2-N3) ))
CALL s(TRANSPOSE( POP(VN3,1:N3+N2-N3) ))
CALL s(TRANSPOSE( POP(N3-N2:N3,VN2) ))
CALL s(TRANSPOSE( POP(VN3,VN2) ))
CALL s(TRANSPOSE( POP(VN3(N3-N2:N3:N3-N2),VN2(N3-N2:N3-(N3-N2):N3-N2)) ))
call s(TRANSPOSE( logical(reshape((/w,z,w,z,w,z/),(/3,2/)),8)))
call s(TRANSPOSE( reshape((/w,z,w,z,w,z/),(/3,2/))))
call s( TRANSPOSE( reshape((/POP(1:N3,1:N2)/),(/3,2/))))
call s(TRANSPOSE( reshape((/POP(1:N3,1:N2).and.POP(VN3,VN2).and.POP(:,:)/),(/3,2/))))
call s( TRANSPOSE( logical(reshape((/w,z,w,z,w,z/),(/N3,N2/)),8)))
call s( TRANSPOSE( reshape((/w,z,w,z,w,z/),(/N3,N2/))))
call s( TRANSPOSE( reshape((/POP(1:N3,1:N2)/),(/N3,N2/))))
call s( TRANSPOSE( reshape((/POP(1:N3,1:N2).and.POP(VN3,VN2).and.POP(:,:)/),(/N3,N2/))))
call s( TRANSPOSE( POP(1:3,1:2) ))
call s( TRANSPOSE( POP(1:3:N3-N2,1:N2:N3-N2) ))
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
logical(8),dimension(:,:)::x
if (any(shape(x)/=(/2,3/)))write(6,*) "NG"
if (any((x.neqv.reshape((/w,z,z,w,w,z/),(/2,3/)))))write(6,*) "NG"
end subroutine
subroutine t(x)
logical(8),dimension(:,:)::x
if (any(shape(x)/=(/2,3/)))write(6,*) "NG"
if (any((x.neqv.(reshape((/w,z,z,w,w,z/),(/2,3/))))))write(6,*) "NG"
end subroutine
end
