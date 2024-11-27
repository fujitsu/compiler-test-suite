module F4TYPES
  integer,parameter::R8=kind(0.0_8)
  integer,parameter::I4=kind(0)
end
 INTERFACE CTABMH

      SUBROUTINE CTABMH_1(TAB,S,FNL,HED,TABLST,KLEV,NTAB,*)
      USE F4TYPES
      REAL(R8)          :: TAB(*),S(14,*)
      CHARACTER(LEN=8)  :: FNL(7),TABLST(:)
      CHARACTER(LEN=*)  :: HED
      INTEGER(I4)       :: KLEV,NTAB
      OPTIONAL             NTAB
      END SUBROUTINE

      SUBROUTINE CTABMH_2(TAB,S,FNL,HED,TABLST,*)
      USE F4TYPES
      REAL(R8)          :: TAB(*),S(14,*)
      CHARACTER(LEN=8)  :: FNL(7),TABLST(*)
      CHARACTER(LEN=*)  :: HED
      OPTIONAL             TABLST
      END SUBROUTINE

      SUBROUTINE CTABMH_3(TAB,S,FNL,*)
      USE F4TYPES
      REAL(R8)          :: TAB(*),S(14,*)
      CHARACTER(LEN=8)  :: FNL(7)
      OPTIONAL             FNL
      END SUBROUTINE

      END INTERFACE

 INTERFACE XCTABMH

      SUBROUTINE XCTABMH_1(TAB,S,FNL,HED,TABLST,KLEV,NTAB)
      USE F4TYPES
      REAL(R8)          :: TAB(*),S(14,*)
      CHARACTER(LEN=8)  :: FNL(7),TABLST(:)
      CHARACTER(LEN=*)  :: HED
      INTEGER(I4)       :: KLEV,NTAB
      OPTIONAL             NTAB
      END SUBROUTINE

      SUBROUTINE XCTABMH_2(TAB,S,FNL,HED,TABLST)
      USE F4TYPES
      REAL(R8)          :: TAB(*),S(14,*)
      CHARACTER(LEN=8)  :: FNL(7),TABLST(*)
      CHARACTER(LEN=*)  :: HED
      OPTIONAL             TABLST
      END SUBROUTINE

      SUBROUTINE XCTABMH_3(TAB,S,FNL)
      USE F4TYPES
      REAL(R8)          :: TAB(*),S(14,*)
      CHARACTER(LEN=8)  :: FNL(7)
      OPTIONAL             FNL
      END SUBROUTINE

      END INTERFACE
print *,'pass'
end
