      CALL TEST
      STOP
      END

      SUBROUTINE TEST()

      LOGICAL*8,dimension(2,4)::IVAL5
      IVAL5(1,:) = .true.
      IVAL5(2,:) = .false.
      CALL SUB(IVAL5)
      contains

      SUBROUTINE SUB(ARY)
      LOGICAL*8,DIMENSION(:,:)::ARY
      LOGICAL*8,DIMENSION(size(ARY,2),size(ARY,1))::RES
      RES = transpose(ARY)
      WRITE(6,*) ARY
      WRITE(6,*) RES
      RETURN
      END SUBROUTINE SUB
      END SUBROUTINE TEST
