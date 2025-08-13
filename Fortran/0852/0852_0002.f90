MODULE RICC_MAT

   IMPLICIT NONE
   PRIVATE

   TYPE, PUBLIC :: WMAT

         CONTAINS

            PROCEDURE :: SymUnPack1234

   END TYPE WMAT

   CONTAINS

   SUBROUTINE SymUnPack1234(this,rdim,cdim,RMat)
   IMPLICIT NONE
   CLASS(WMAT),INTENT(IN OUT)    :: this
   INTEGER,INTENT(IN)        :: rdim,cdim 
   REAL,INTENT(OUT) :: RMat(rdim,cdim)
   INTEGER                   :: i,j,ij

   DO i=1,RDIM
      DO j=1,CDIM
         ij=i+j
        RMat(J,I)=REAL(ij)
      ENDDO
   ENDDO

   END SUBROUTINE SymUnPack1234

END MODULE RICC_MAT

PROGRAM MAIN
   USE RICC_MAT
   IMPLICIT NONE
   INTEGER :: i,j,k,l
   INTEGER :: NO,NU,NO2,NU2
   REAL,ALLOCATABLE  :: T2(:,:,:,:)
   REAL,ALLOCATABLE  :: TEMPT2(:,:)
   TYPE(WMAT)                 :: T(2)  
   NO=2
   NU=2
   NO2  = NO*NO
   NU2  = NU*NU

   ALLOCATE (T2(NU,NU,NO,NO))
   ALLOCATE (TEMPT2(NU*NU*NO*NO,1))
   call T(2)%SymUnPack1234(nu2,no2,TEMPT2)
   T2(:,:,:,:)=RESHAPE(TEMPT2,[NU,NU,NO,NO])
   DO i=1,NU
      DO j=1,NU
         DO k=1,NO
            DO l=1,NO
               WRITE(3,*) i,j,k,l,T2(i,j,k,l)
            ENDDO
         ENDDO
      ENDDO
   ENDDO
100 FORMAT(1X,4I3,F13.10)
rewind 3
call chk
print *,'pass'
END
subroutine chk
integer:: x(4)
read(3,*) x,r
if (any(x/=[1,1,1,1])) print *,1001
if (r/= 2) print *,1002
read(3,*) x,r
if (any(x/=[1,1,1,2])) print *,1001
if (r/= 4) print *,1002
read(3,*) x,r
if (any(x/=[1,1,2,1])) print *,1001
if (r/= 3) print *,1002
read(3,*) x,r
if (any(x/=[1,1,2,2])) print *,1001
if (r/= 5) print *,1002
read(3,*) x,r
if (any(x/=[1,2,1,1])) print *,1001
if (r/= 4) print *,1002
read(3,*) x,r
if (any(x/=[1,2,1,2])) print *,1001
if (r/= 6) print *,1002
read(3,*) x,r
if (any(x/=[1,2,2,1])) print *,1001
if (r/= 5) print *,1002
read(3,*) x,r
if (any(x/=[1,2,2,2])) print *,1001
if (r/= 7) print *,1002
read(3,*) x,r
if (any(x/=[2,1,1,1])) print *,1001
if (r/= 3) print *,1002
read(3,*) x,r
if (any(x/=[2,1,1,2])) print *,1001
if (r/= 5) print *,1002
read(3,*) x,r
if (any(x/=[2,1,2,1])) print *,1001
if (r/= 4) print *,1002
read(3,*) x,r
if (any(x/=[2,1,2,2])) print *,1001
if (r/= 6) print *,1002
read(3,*) x,r
if (any(x/=[2,2,1,1])) print *,1001
if (r/= 5) print *,1002
read(3,*) x,r
if (any(x/=[2,2,1,2])) print *,1001
if (r/= 7) print *,1002
read(3,*) x,r
if (any(x/=[2,2,2,1])) print *,1001
if (r/= 6) print *,1002
read(3,*) x,r
if (any(x/=[2,2,2,2])) print *,1001
if (r/= 8) print *,1002
end
