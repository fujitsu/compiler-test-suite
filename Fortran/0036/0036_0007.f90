MODULE MOD_A
  IMPLICIT NONE
  INTEGER, PARAMETER, PRIVATE :: String_Length = 100
  CHARACTER(LEN=String_Length) :: String
!$OMP THREADPRIVATE (String)
  REAL :: Var_A
  type x
    integer::x1
  end type
  integer,pointer:: a(:,:)
  interface gen
    procedure :: prc
  end interface
contains
  subroutine prc(x)
  integer,pointer:: x(:,:)
if (x(3,6)/=1) print *,2012
  end subroutine
END MODULE MOD_A

MODULE MOD_B
  USE MOD_A, ONLY: Var_A, String,a,gen
  IMPLICIT NONE
  private
public:: a,gen,String
END MODULE MOD_B

MODULE SUB_WRAPPER

  USE MOD_B
  USE MOD_A

  IMPLICIT NONE

CONTAINS

SUBROUTINE SUB

  IMPLICIT NONE

  Var_A = 100.0
  String = 'Hello'
  
  WRITE(1,*) 'Var_A ',Var_A
  WRITE(1,*) TRIM(String)
allocate( a(2:3,4:6))
a(3,6)=1
call gen( a)

  RETURN

END SUBROUTINE SUB

END MODULE SUB_WRAPPER
PROGRAM MAIN

USE SUB_WRAPPER

IMPLICIT NONE

CALL Sub
if (Var_A/=100) print *,202
if (String/='Hello') print *,303

print *,'pass'
END
