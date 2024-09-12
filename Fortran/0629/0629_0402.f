      call S61(10)
      print *,'compile OK'
      end
      SUBROUTINE S61(M)
      DO 18 MM=1,M
      I= 1
      DO 11 I=I*M,3,1
11    IC2=IC2+1
      CALL CLR(IC1,IC2,I,6,3,4)
18    continue
      END
      subroutine CLR(IC1,IC2,I,I1,I2,I3)
      end          
