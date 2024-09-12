      CALL TEST
      STOP
      END

      SUBROUTINE TEST()
      LOGICAL*8,dimension(8)::LVAL8
      DATA LVAL8/.true.,.false.,.true.,.false.,.true.,.false.,.true.,.false./
      CALL SUB(LVAL8)
      contains

      SUBROUTINE SUB(ARY)
      LOGICAL*8,DIMENSION(:)::ARY
      LOGICAL*8,DIMENSION(size(ary,1))::RES
      RES = eoshift(ARRAY = ARY,SHIFT = SIZE(ARY,1)/2 ,DIM = 1)
      WRITE(6,*) ARY
      WRITE(6,*) RES
      RETURN
      END SUBROUTINE SUB
      END SUBROUTINE TEST
