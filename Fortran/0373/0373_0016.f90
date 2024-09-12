      CALL TEST
      STOP
      END

      SUBROUTINE TEST()
      LOGICAL*8,dimension(8)::LVAL8
      DATA LVAL8/.true.,.false.,.true.,.false.,.true.,.false.,.true.,.false./
      CALL SUB(LVAL8,SIZE(LVAL8))

      contains

      SUBROUTINE SUB(ARY,J)
      LOGICAL*8,DIMENSION(:)::ARY
      LOGICAL*8,DIMENSION(1,1,1,J,1,1,2)::RES
      INTEGER*4,DIMENSION(7)::SH
      LOGICAL*8,DIMENSION(7)::PD
      SH=(/1,1,1,J,1,1,2/)
      PD=(/.true.,.true.,.true.,.true.,.true.,.false.,.true./)
      RES = reshape(SOURCE=ARY,SHAPE=SH,PAD=PD)
      WRITE(6,*) RES
      RETURN
      END SUBROUTINE SUB
      END SUBROUTINE TEST
