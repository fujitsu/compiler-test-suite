      CALL TEST
      STOP
      END

      SUBROUTINE TEST()
      LOGICAL*8,dimension(8)::L8VAL
      L8VAL = .true.
      CALL SUB(L8VAL,1,2)

      contains

      SUBROUTINE SUB(ARY,J,K)
      LOGICAL*8,DIMENSION(:)::ARY
      LOGICAL*8,DIMENSION(K,SIZE(ARY,1))::RES
      RES = spread(SOURCE = ARY , DIM = J ,NCOPIES = K)
      DO I = 1 ,K
      WRITE(6,*) RES(I,:)
      ENDDO
      RETURN
      END SUBROUTINE SUB
      END SUBROUTINE TEST
