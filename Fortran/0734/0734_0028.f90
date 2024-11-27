MODULE Lin_Feedback_Shift_Reg

IMPLICIT NONE
INTEGER, PARAMETER :: dp = SELECTED_REAL_KIND(14, 60)
INTEGER, SAVE      :: s1 = 153587801, s2 = -759022222, s3 = 1288503317, &
                      s4 = -1718083407

CONTAINS

SUBROUTINE init_seeds(i1, i2, i3, i4)
IMPLICIT NONE

INTEGER, INTENT(IN) :: i1, i2, i3, i4

s1 = i1
s2 = i2
s3 = i3
s4 = i4
IF (IAND(s1,-2) == 0) s1 = i1 - 1023
IF (IAND(s2,-8) == 0) s2 = i2 - 1023
IF (IAND(s3,-16) == 0) s3 = i3 - 1023
IF (IAND(s4,-32) == 0) s4 = i4 - 1023

RETURN
END SUBROUTINE init_seeds

FUNCTION lfsr113() RESULT(random_numb)

IMPLICIT NONE
REAL (dp) :: random_numb

INTEGER   :: b

b  = ISHFT( IEOR( ISHFT(s1,6), s1), -13)
s1 = IEOR( ISHFT( IAND(s1,-2), 18), b)
b  = ISHFT( IEOR( ISHFT(s2,2), s2), -27)
s2 = IEOR( ISHFT( IAND(s2,-8), 2), b)
b  = ISHFT( IEOR( ISHFT(s3,13), s3), -21)
s3 = IEOR( ISHFT( IAND(s3,-16), 7), b)
b  = ISHFT( IEOR( ISHFT(s4,3), s4), -12)
s4 = IEOR( ISHFT( IAND(s4,-128), 13), b)

random_numb = IEOR( IEOR( IEOR(s1,s2), s3), s4) * 2.3283064365E-10_dp + 0.5_dp

RETURN
END FUNCTION lfsr113

END MODULE Lin_Feedback_Shift_Reg

MODULE Ecuyer_random

IMPLICIT NONE
INTEGER, PARAMETER :: dp = SELECTED_REAL_KIND(14, 60)

INTEGER, SAVE :: s1 = 1234, s2 = -4567, s3 = 7890

CONTAINS

SUBROUTINE init_seeds(i1, i2, i3)
IMPLICIT NONE

INTEGER, INTENT(IN) :: i1, i2, i3

s1 = i1
s2 = i2
s3 = i3
IF (IAND(s1,-2) == 0) s1 = i1 - 1023
IF (IAND(s2,-8) == 0) s2 = i2 - 1023
IF (IAND(s3,-16) == 0) s3 = i3 - 1023

RETURN
END SUBROUTINE init_seeds

FUNCTION taus88() RESULT(random_numb)

IMPLICIT NONE
REAL (dp) :: random_numb

INTEGER   :: b

b  = ISHFT( IEOR( ISHFT(s1,13), s1), -19)
s1 = IEOR( ISHFT( IAND(s1,-2), 12), b)
b  = ISHFT( IEOR( ISHFT(s2,2), s2), -25)
s2 = IEOR( ISHFT( IAND(s2,-8), 4), b)
b  = ISHFT( IEOR( ISHFT(s3,3), s3), -11)
s3 = IEOR( ISHFT( IAND(s3,-16), 17), b)
random_numb = IEOR( IEOR(s1,s2), s3) * 2.3283064365E-10_dp + 0.5_dp

RETURN
END FUNCTION taus88

END MODULE Ecuyer_random

PROGRAM MAIN

USE Lin_Feedback_Shift_Reg, ONLY: lfsr113
USE Ecuyer_random, ONLY: taus88
IMPLICIT NONE
INTEGER, PARAMETER :: dp = SELECTED_REAL_KIND(14, 60)

INTEGER   :: count1, count2, count3, count4, count_rate, count_max, i
REAL (dp) :: dx
REAL      :: x, time_taus88, time_lfsr113, time_compiler

CALL SYSTEM_CLOCK(count1, count_rate, count_max)
DO i = 1, 25000000
  dx = taus88()
END DO
CALL SYSTEM_CLOCK(count2)

DO i = 1, 25000000
  dx = lfsr113()
END DO
CALL SYSTEM_CLOCK(count3)

DO i = 1, 25000000
  CALL RANDOM_NUMBER(x)
END DO
CALL SYSTEM_CLOCK(count4)

time_taus88 = REAL(count2 - count1)
IF (time_taus88 < 0.0) time_taus88 = time_taus88 + count_max
time_taus88 = time_taus88 / REAL(count_rate)

time_lfsr113 = REAL(count3 - count2)
IF (time_lfsr113 < 0.0) time_lfsr113 = time_lfsr113 + count_max
time_lfsr113 = time_lfsr113 / REAL(count_rate)

time_compiler = REAL(count4 - count3)
IF (time_compiler < 0.0) time_compiler = time_compiler + count_max
time_compiler = time_compiler / REAL(count_rate)

WRITE(1, '(a, 3f9.3)') ' Times for TAUS88, LFSR113 & RANDOM_NUMBER = ',  &
      time_taus88, time_lfsr113, time_compiler
print *,'pass'
END PROGRAM MAIN
