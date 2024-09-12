      CALL TEST
      STOP
      END

      SUBROUTINE TEST()
      LOGICAL*8,dimension(8)::IVAL4
      DATA IVAL4/.true.,.false.,.true.,.false.,.true.,.false.,.true.,.false./
      CALL SUB(IVAL4)
      contains

      SUBROUTINE SUB(ARY)
      LOGICAL*8,DIMENSION(:)::ARY
      LOGICAL*8,DIMENSION(size(ary,1))::RES
      RES = cshift(ARRAY = ARY,SHIFT = SIZE(ARY,1)-1 ,DIM = 1)
      WRITE(6,*) ARY
      WRITE(6,*) RES
      RETURN
      END SUBROUTINE SUB
      END SUBROUTINE TEST
