REAL(KIND(0D0)) :: Sinc(12)
REAL(KIND(0D0)) :: STRESS(12)
REAL(KIND(0D0)):: Z2(2)=(/0.0_8,6.0D+0/)
REAL(KIND(0D0)):: Z4(2)=(/5.0_8,6.0D+0/)
i1=1;i2=2
STRESS(1:8:2) = (/1._8,2._8,3._8,4._8/)
CALL SUB01(STRESS,Sinc,Z2)
if (any(abs(Sinc(1:12:2)-(/1._8,2._8,3._8,4._8,5._8,6._8/))>0.0001_8))print *,'error-1'
Sinc=0
CALL SUB02(STRESS,Sinc,Z2,2)
if (any(abs(Sinc(1:12:2)-(/1._8,2._8,3._8,4._8,5._8,6._8/))>0.0001_8))print *,'error-2'
Sinc=0
CALL SUB03(STRESS,Sinc,Z2,2,5._8)
if (any(abs(Sinc(1:12:2)-(/1._8,2._8,3._8,4._8,5._8,6._8/))>0.0001_8))print *,'error-3'
Sinc=0
CALL SUB04(STRESS,Sinc,Z4)
if (any(abs(Sinc(1:12:2)-(/1._8,2._8,3._8,4._8,5._8,6._8/))>0.0001_8))print *,'error-4'
Sinc=0
CALL SUB05(STRESS,Sinc,Z4)
if (any(abs(Sinc(1:12:2)-(/1._8,2._8,3._8,4._8,5._8,6._8/))>0.0001_8))print *,'error-5'
CALL SUB11(STRESS,Sinc,Z2)
if (any(abs(Sinc(1:12:2)-(/1._8,2._8,3._8,4._8,5._8,6._8/))>0.0001_8))print *,'error-11'
Sinc=0
CALL SUB12(STRESS,Sinc,Z2,2)
if (any(abs(Sinc(1:12:2)-(/1._8,2._8,3._8,4._8,5._8,6._8/))>0.0001_8))print *,'error-12'
Sinc=0
CALL SUB13(STRESS,Sinc,Z2,2,5._8)
if (any(abs(Sinc(1:12:2)-(/1._8,2._8,3._8,4._8,5._8,6._8/))>0.0001_8))print *,'error-13'
Sinc=0
CALL SUB14(STRESS,Sinc,Z4)
if (any(abs(Sinc(1:12:2)-(/1._8,2._8,3._8,4._8,5._8,6._8/))>0.0001_8))print *,'error-14'
Sinc=0
CALL SUB15(STRESS,Sinc,Z4)
if (any(abs(Sinc(1:12:2)-(/1._8,2._8,3._8,4._8,5._8,6._8/))>0.0001_8))print *,'error-15'
CALL SUB21(STRESS,Sinc,Z2,12)
if (any(abs(Sinc(1:12:2)-(/1._8,2._8,3._8,4._8,5._8,6._8/))>0.0001_8))print *,'error-11'
Sinc=0
CALL SUB22(STRESS,Sinc,Z2,2,12)
if (any(abs(Sinc(1:12:2)-(/1._8,2._8,3._8,4._8,5._8,6._8/))>0.0001_8))print *,'error-12'
Sinc=0
CALL SUB23(STRESS,Sinc,Z2,2,5._8,12)
if (any(abs(Sinc(1:12:2)-(/1._8,2._8,3._8,4._8,5._8,6._8/))>0.0001_8))print *,'error-13'
Sinc=0
CALL SUB24(STRESS,Sinc,Z4,12)
if (any(abs(Sinc(1:12:2)-(/1._8,2._8,3._8,4._8,5._8,6._8/))>0.0001_8))print *,'error-14'
Sinc=0
CALL SUB25(STRESS,Sinc,Z4,12)
if (any(abs(Sinc(1:12:2)-(/1._8,2._8,3._8,4._8,5._8,6._8/))>0.0001_8))print *,'error-15'
print *,'pass'
contains
SUBROUTINE SUB01(STRESS,Sinc,Z2)
REAL(KIND(0D0)) :: Sinc(12),STRESS(12),Z2(2)
REAL(KIND(0D0)), PARAMETER :: Z1 = 5.D+0
Sinc(i1:12:2) = (/STRESS(1:8:2),Z1,Z2(2)/)
END SUBROUTINE
SUBROUTINE SUB02(STRESS,Sinc,Z2,j)
REAL(KIND(0D0)) :: Sinc(12),STRESS(12),Z2(2)
REAL(KIND(0D0)), PARAMETER :: Z1 = 5.D+0
Sinc(i1:12:2) = (/STRESS(1:8:2),Z1,Z2(j)/)
END SUBROUTINE
SUBROUTINE SUB03(STRESS,Sinc,Z2,j,Z3)
REAL(KIND(0D0)) :: Sinc(12),STRESS(12),Z2(2),Z3
Sinc(i1:12:2) = (/STRESS(1:8:2),Z3,Z2(j)/)
END SUBROUTINE
SUBROUTINE SUB04(STRESS,Sinc,Z4)
REAL(KIND(0D0)) :: Sinc(12),STRESS(12),Z4(2)
Sinc(i1:12:2) = (/STRESS(1:8:2),Z4/)
END SUBROUTINE
SUBROUTINE SUB05(STRESS,Sinc,Z4)
REAL(KIND(0D0)) :: Sinc(12),STRESS(12),Z4(2)
Sinc(i1:12:2) = (/STRESS(1:8:2),Z4(1:2)/)
END SUBROUTINE
SUBROUTINE SUB11(STRESS,Sinc,Z2)
REAL(KIND(0D0)) :: Sinc(:),STRESS(:),Z2(:)
REAL(KIND(0D0)), PARAMETER :: Z1 = 5.D+0
Sinc(i1:12:2) = (/STRESS(1:8:2),Z1,Z2(2)/)
END SUBROUTINE
SUBROUTINE SUB12(STRESS,Sinc,Z2,j)
REAL(KIND(0D0)) :: Sinc(:),STRESS(:),Z2(:)
REAL(KIND(0D0)), PARAMETER :: Z1 = 5.D+0
Sinc(i1:12:2) = (/STRESS(1:8:2),Z1,Z2(j)/)
END SUBROUTINE
SUBROUTINE SUB13(STRESS,Sinc,Z2,j,Z3)
REAL(KIND(0D0)) :: Sinc(:),STRESS(:),Z2(:),Z3
Sinc(i1:12:2) = (/STRESS(1:8:2),Z3,Z2(j)/)
END SUBROUTINE
SUBROUTINE SUB14(STRESS,Sinc,Z4)
REAL(KIND(0D0)) :: Sinc(:),STRESS(:),Z4(:)
Sinc(i1:12:2) = (/STRESS(1:8:2),Z4/)
END SUBROUTINE
SUBROUTINE SUB15(STRESS,Sinc,Z4)
REAL(KIND(0D0)) :: Sinc(:),STRESS(:),Z4(:)
Sinc(i1:12:2) = (/STRESS(1:8:2),Z4(1:2)/)
END SUBROUTINE
SUBROUTINE SUB21(STRESS,Sinc,Z2,k)
REAL(KIND(0D0)) :: Sinc(i1:k),STRESS(1:k),Z2(1:k-10)
REAL(KIND(0D0)), PARAMETER :: Z1 = 5.D+0
Sinc(i1:12:2) = (/STRESS(1:8:2),Z1,Z2(2)/)
END SUBROUTINE
SUBROUTINE SUB22(STRESS,Sinc,Z2,j,k)
REAL(KIND(0D0)) :: Sinc(i1:k),STRESS(1:k),Z2(1:k-10)
REAL(KIND(0D0)), PARAMETER :: Z1 = 5.D+0
Sinc(i1:12:2) = (/STRESS(1:8:2),Z1,Z2(j)/)
END SUBROUTINE
SUBROUTINE SUB23(STRESS,Sinc,Z2,j,Z3,k)
REAL(KIND(0D0)) :: Sinc(i1:k),STRESS(1:k),Z2(1:k-10),Z3
Sinc(i1:12:2) = (/STRESS(1:8:2),Z3,Z2(j)/)
END SUBROUTINE
SUBROUTINE SUB24(STRESS,Sinc,Z4,k)
REAL(KIND(0D0)) :: Sinc(i1:k),STRESS(1:k),Z4(1:k-10)
Sinc(i1:12:2) = (/STRESS(1:8:2),Z4/)
END SUBROUTINE
SUBROUTINE SUB25(STRESS,Sinc,Z4,k)
REAL(KIND(0D0)) :: Sinc(i1:k),STRESS(1:k),Z4(1:k-10)
Sinc(i1:12:2) = (/STRESS(1:8:2),Z4(1:2)/)
END SUBROUTINE
END 
