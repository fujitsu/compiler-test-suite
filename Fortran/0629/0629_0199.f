      IMPLICIT REAL*8 (A-H,O-Z)
      IMPLICIT INTEGER*8 (I-N)

      PARAMETER(NGB  =1)
      PARAMETER(IY   =50)
      PARAMETER(IN   =250*NGB)

      PARAMETER (NVEC=NGB)
      PARAMETER (INB=IN/NVEC)
      PARAMETER (NPB=INB/IY*3)

      COMMON /CONSTC/  SLX,SLY,NX,NY,NP,NXP1,NXP2,NYP1,NYP2
      COMMON /PARTCL/  XE(IN)
      COMMON /TEMP/ XET(INB), IDX(NPB,0:IY), IOFS(0:IY)

      real*8 FIRSTM(0:IY)

       FIRSTM=1
       XET=2
       IOFS=3
      DO L=1,NVEC

         DO J=1,IY            
            DO I=1,NPB        
               IDX(I,J)=1     
            ENDDO
         ENDDO
!$omp parallel do private(M,IND)
         DO J=1,IY
            M = FIRSTM(J)
            DO I=1,IOFS(J)
               IND=IDX(I,J)
               XE(M)  = XET(IND)
               M=M+1
            ENDDO
         ENDDO

      ENDDO
      print *,'OK'
      end
