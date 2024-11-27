REAL(KIND(0D0)) :: Sinc(12)
REAL(KIND(0D0)) :: STRESS(12)
REAL(KIND(0D0)):: Z2(2)=(/0.0_8,6.0D+0/)
REAL(KIND(0D0)):: Z4(2)=(/5.0_8,6.0D+0/)
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
 100  FORMAT("time = ",F20.10)
print *,'pass'
contains
SUBROUTINE SUB01(STRESS,Sinc,Z2)
REAL(KIND(0D0)) :: Sinc(12),STRESS(12),Z2(2)
REAL(KIND(0D0)), PARAMETER :: Z1 = 5.D+0
i2=2
Sinc(1:12:2) = (/STRESS(1:8:2),Z1,Z2(i2)/)
END SUBROUTINE
SUBROUTINE SUB02(STRESS,Sinc,Z2,j)
REAL(KIND(0D0)) :: Sinc(12),STRESS(12),Z2(2)
REAL(KIND(0D0)), PARAMETER :: Z1 = 5.D+0
i2=2
Sinc(1:12:2) = (/STRESS(1:8:2),Z1,Z2(j+i2-i2)/)
END SUBROUTINE
SUBROUTINE SUB03(STRESS,Sinc,Z2,j,Z3)
REAL(KIND(0D0)) :: Sinc(12),STRESS(12),Z2(2),Z3
i2=2
Sinc(1:12:2) = (/STRESS(1:8:2),Z3,Z2(j*i2/i2)/)
END SUBROUTINE
SUBROUTINE SUB04(STRESS,Sinc,Z4)
REAL(KIND(0D0)) :: Sinc(12),STRESS(12),Z4(2)
i2=2
Sinc(1:12:2) = (/STRESS(1:8:2),i2+Z4-i2/)
END SUBROUTINE
SUBROUTINE SUB05(STRESS,Sinc,Z4)
REAL(KIND(0D0)) :: Sinc(12),STRESS(12),Z4(2)
i2=2
Sinc(1:12:2) = (/STRESS(1:8:2),i2+Z4(1:2)-i2/)
END SUBROUTINE
SUBROUTINE SUB06(STRESS,Sinc,Z4,Z2,Z3)
REAL(KIND(0D0)) :: Sinc(12),STRESS(12),Z4(2),Z2(2),Z3,Z5=7.0_8
REAL(KIND(0D0)), PARAMETER :: Z1 = 5.D+0
i2=2
Sinc(1:12:2) = (/Z1,Z2(i2),Z4(1:2),-i2+Z3+i2,Z5/)
END SUBROUTINE
END 
