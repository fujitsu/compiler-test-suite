      SUBROUTINE BDCAL0(NV)
      PARAMETER ( IPRX=88, IPRY=80)
      PARAMETER ( IPRV=IPRX*IPRY )
      DIMENSION XN(IPRV,1),     YN(IPRV,1),     ZN(IPRV,1)
      DIMENSION X (IPRV,1),     Y (IPRV,1),     Z (IPRV,1)

      X = 1
      Y = 2
      Z = 3
      XN = 4
      YN = 5
      ZN = 6
      DO 42 NV1=1,NV
      X(NV1,1)=X(NV1,1)+XN(NV1,1)
      Y(NV1,1)=Y(NV1,1)+YN(NV1,1)
      Z(NV1,1)=Z(NV1,1)+ZN(NV1,1)
 42    CONTINUE
      write(6,*) X,Y,Z
      RETURN
      END

      call BDCAL0(60)
      end
