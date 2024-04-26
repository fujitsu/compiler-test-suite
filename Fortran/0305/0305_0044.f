      parameter(LDYH=10)
      DOUBLE PRECISION YH(LDYH,LDYH)
      COMMON /DVOD01/  EL(13), N,  NQ
!$OMP THREADPRIVATE(/DVOD01/)
      YH=0
      EL =0
      N=10
      NQ=10
      call test1(YH,LDYH)
      call test2(YH,LDYH)
      call test2(YH,LDYH)
      print *, " ok "
      stop
      end
      SUBROUTINE test1(YH, LDYH)
      DOUBLE PRECISION YH
      INTEGER LDYH , L
      DIMENSION YH(LDYH,*)

      data L/10/
      COMMON /DVOD01/  EL(13), N,  NQ
      
!$OMP THREADPRIVATE(/DVOD01/)
      DO 170 J = 3, NQ
        DO 160 I = 1, N
          YH(I,J) = YH(I,J) - YH(I,L)*EL(J)
 160    CONTINUE
 170  CONTINUE
      RETURN
      END
      SUBROUTINE test2(YH, LDYH)
      DOUBLE PRECISION YH
      INTEGER LDYH, L, NQ , N
      DIMENSION YH(LDYH,*)
      data L/10/,NQ/10/,N/10/

      dimension  EL(13)
      save EL
!$OMP THREADPRIVATE(EL)
      DO 170 J = 3, NQ
        DO 160 I = 1, N
          YH(I,J) = YH(I,J) - YH(I,L)*EL(J)
 160    CONTINUE
 170  CONTINUE
      RETURN
      END
      subroutine test3(YH,LDYH)
      DOUBLE PRECISION YH
      DIMENSION YH(LDYH,*)
      data NQ/10/,N/10/,L/10/
      type struct
        real(8)                 :: area
        real(8), dimension(3)   :: nv
      end type
      type(struct) :: b
      integer :: i,j
       b%nv=0
      DO 171 J = 3, NQ
        DO 161 I = 1, N
          YH(I,J) = YH(I,J) - YH(I,L)*b%nv(J)
 161      CONTINUE
 171     CONTINUE
      end subroutine test3


