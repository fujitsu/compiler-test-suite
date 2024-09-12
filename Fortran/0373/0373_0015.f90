      CALL TEST
      STOP
      END

      SUBROUTINE TEST()

      LOGICAL*8,dimension(8,8)::LVAL8
      LVAL8(1:7:2,:) = .true.
      LVAL8(2:8:2,:) = .false.

      CALL SUB(LVAL8)
      contains

      SUBROUTINE SUB(ARY)
      LOGICAL*8,DIMENSION(:,:)::ARY
      LOGICAL*8,DIMENSION(size(ary,1)*size(ary,2))::RES
      RES = pack(ARRAY = ARY , MASK = .true.)
      WRITE(6,*) RES
      RETURN
      END SUBROUTINE SUB
      END SUBROUTINE TEST
