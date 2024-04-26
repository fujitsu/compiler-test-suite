      program main
      IMPLICIT REAL*8(A-H,O-Z)
      DIMENSION QR(122)
      COMMON /CG1TEMP/QR
      do i=1,122
         QR(i)=i
      enddo
      call SUB(122,1)
      end

      SUBROUTINE SUB(NY,NZ)
      IMPLICIT REAL*8(A-H,O-Z)
      DIMENSION FLUX(122)
      DIMENSION QR(122)
      COMMON /CG1TEMP/QR

!$omp parallel do lastprivate(ROR),firstprivate(QR)
      DO K=1,NZ
         DO J=1,NY
            ROR = QR(J)
            CALL SUB2(ROR)
         END DO
         DO J=1,NY
            flux(J)=J
         END DO
      END DO
!$omp end parallel do

      print *,ROR,FLUX

      END

      SUBROUTINE SUB2(RP)
      IMPLICIT REAL*8(A-H,O-Z)
      RO0   = RP
      END

