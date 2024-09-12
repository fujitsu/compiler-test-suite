      CALL TEST
      STOP
      END

      SUBROUTINE TEST()
      LOGICAL*8,dimension(8)::IVAL4
      LOGICAL  ,dimension(8)::MVAL4
      LOGICAL*8,dimension(8)::FVAL4
      MVAL4=(/(.true.,.false.,i=1,SIZE(IVAL4,1)/2)/)
      IVAL4 = .true.
      FVAL4 = .false.

      CALL SUB(IVAL4,MVAL4,FVAL4)

      contains

      SUBROUTINE SUB(ARY,MSK,FLD)
      LOGICAL*8,DIMENSION(:)::ARY,FLD
      LOGICAL*8,DIMENSION(size(ARY,1))::RES
      LOGICAL  ,DIMENSION(:)::MSK
      RES = unpack(ARY,MSK,FLD)
      WRITE(6,*) RES
      RETURN
      END SUBROUTINE SUB
      END SUBROUTINE TEST
