
INTRINSIC :: ABS
INTRINSIC :: ACOS
INTRINSIC :: AIMAG
INTRINSIC :: AINT
INTRINSIC :: ALOG
INTRINSIC :: ALOG10
INTRINSIC :: AMOD
INTRINSIC :: ANINT
INTRINSIC :: ASIN
INTRINSIC :: ATAN
INTRINSIC :: ATAN2
INTRINSIC :: CABS
INTRINSIC :: CCOS
INTRINSIC :: CEXP
INTRINSIC :: CLOG
INTRINSIC :: CONJG
INTRINSIC :: COS
INTRINSIC :: COSH
INTRINSIC :: CSIN
INTRINSIC :: CSQRT
INTRINSIC :: DIM
INTRINSIC :: EXP
INTRINSIC :: SIGN
INTRINSIC :: SIN
INTRINSIC :: SINH
INTRINSIC :: SQRT
INTRINSIC :: TAN
INTRINSIC :: TANH

PROCEDURE(ABS),    POINTER :: PABSP
PROCEDURE(ACOS),   POINTER :: PACOSP
PROCEDURE(AIMAG),  POINTER :: PAIMAGP
PROCEDURE(AINT),   POINTER :: PAINTP
PROCEDURE(ALOG),   POINTER :: PALOGP
PROCEDURE(ALOG10), POINTER :: PALOG10P
PROCEDURE(AMOD),   POINTER :: PAMODP
PROCEDURE(ANINT),  POINTER :: PANINTP
PROCEDURE(ASIN),   POINTER :: PASINP
PROCEDURE(ATAN),   POINTER :: PATANP
PROCEDURE(ATAN2),  POINTER :: PATAN2P
PROCEDURE(CABS),   POINTER :: PCABSP
PROCEDURE(CCOS),   POINTER :: PCCOSP
PROCEDURE(CEXP),   POINTER :: PCEXPP
PROCEDURE(CLOG),   POINTER :: PCLOGP
PROCEDURE(CONJG),  POINTER :: PCONJGP
PROCEDURE(COS),    POINTER :: PCOSP
PROCEDURE(COSH),   POINTER :: PCOSHP
PROCEDURE(CSIN),   POINTER :: PCSINP
PROCEDURE(CSQRT),  POINTER :: PCSQRTP
PROCEDURE(DIM),    POINTER :: PDIMP
PROCEDURE(EXP),    POINTER :: PEXPP
PROCEDURE(SIGN),   POINTER :: PSIGNP
PROCEDURE(SIN),    POINTER :: PSINP
PROCEDURE(SINH),   POINTER :: PSINHP
PROCEDURE(SQRT),   POINTER :: PSQRTP
PROCEDURE(TAN),    POINTER :: PTANP
PROCEDURE(TANH),   POINTER :: PTANHP

REAL   (KIND = 4), PARAMETER :: R04 = 1.0
COMPLEX(KIND = 4), PARAMETER :: C04 = (1.0, 1.0)

PABSP    => ABS
PACOSP   => ACOS
PAIMAGP  => AIMAG
PAINTP   => AINT
PALOGP   => ALOG
PALOG10P => ALOG10
PAMODP   => AMOD
PANINTP  => ANINT
PASINP   => ASIN
PATANP   => ATAN
PATAN2P  => ATAN2
PCABSP   => CABS
PCCOSP   => CCOS
PCEXPP   => CEXP
PCLOGP   => CLOG
PCONJGP  => CONJG
PCOSP    => COS
PCOSHP   => COSH
PCSINP   => CSIN
PCSQRTP  => CSQRT
PDIMP    => DIM
PEXPP    => EXP
PSIGNP   => SIGN
PSINP    => SIN
PSINHP   => SINH
PSQRTP   => SQRT
PTANP    => TAN
PTANHP   => TANH

IF (PABSP   (R04     ).ne.ABS   (R04     )) PRINT *, 'ABS     ERROR'
IF (PACOSP  (R04     ).ne.ACOS  (R04     )) PRINT *, 'ACOS    ERROR'
IF (PAIMAGP (C04     ).ne.AIMAG (C04     )) PRINT *, 'AIMAG   ERROR'
IF (PAINTP  (R04     ).ne.AINT  (R04     )) PRINT *, 'AINT    ERROR'
IF (PALOGP  (R04     ).ne.ALOG  (R04     )) PRINT *, 'ALOG    ERROR'
IF (PALOG10P(R04     ).ne.ALOG10(R04     )) PRINT *, 'ALOG10  ERROR'
IF (PAMODP  (R04, R04).ne.AMOD  (R04, R04)) PRINT *, 'AMOD    ERROR'
IF (PANINTP (R04     ).ne.ANINT (R04     )) PRINT *, 'ANINT   ERROR'
IF (PASINP  (R04     ).ne.ASIN  (R04     )) PRINT *, 'ASIN    ERROR'
IF (PATANP  (R04     ).ne.ATAN  (R04     )) PRINT *, 'ATAN    ERROR'
IF (PATAN2P (R04, R04).ne.ATAN2 (R04, R04)) PRINT *, 'ATAN2   ERROR'
IF (PCABSP  (C04     ).ne.CABS  (C04     )) PRINT *, 'CABS    ERROR'
IF (PCCOSP  (C04     ).ne.CCOS  (C04     )) PRINT *, 'CCOS    ERROR'
IF (PCEXPP  (C04     ).ne.CEXP  (C04     )) PRINT *, 'CEXP    ERROR'
IF (PCLOGP  (C04     ).ne.CLOG  (C04     )) PRINT *, 'CLOG    ERROR'
IF (PCONJGP (C04     ).ne.CONJG (C04     )) PRINT *, 'CONJG   ERROR'
IF (PCOSP   (R04     ).ne.COS   (R04     )) PRINT *, 'COS     ERROR'
IF (PCOSHP  (R04     ).ne.COSH  (R04     )) PRINT *, 'COSH    ERROR'
IF (PCSINP  (C04     ).ne.CSIN  (C04     )) PRINT *, 'CSIN    ERROR'
IF (PCSQRTP (C04     ).ne.CSQRT (C04     )) PRINT *, 'CSQRT   ERROR'
IF (PDIMP   (R04, R04).ne.DIM   (R04, R04)) PRINT *, 'DIM     ERROR'
IF (PEXPP   (R04     ).ne.EXP   (R04     )) PRINT *, 'EXP     ERROR'
IF (PSIGNP  (R04, R04).ne.SIGN  (R04, R04)) PRINT *, 'SIGN    ERROR'
IF (PSINP   (R04     ).ne.SIN   (R04     )) PRINT *, 'SIN     ERROR'
IF (PSINHP  (R04     ).ne.SINH  (R04     )) PRINT *, 'SINH    ERROR'
IF (PSQRTP  (R04     ).ne.SQRT  (R04     )) PRINT *, 'SQRT    ERROR'
IF (PTANP   (R04     ).ne.TAN   (R04     )) PRINT *, 'TAN     ERROR'
IF (PTANHP  (R04     ).ne.TANH  (R04     )) PRINT *, 'TANH    ERROR'

PRINT *,'pass'


END