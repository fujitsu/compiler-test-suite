      program main
      PARAMETER (NI3=49,NJ3=139,NK3=139)
      DIMENSION ROW3(-1:NI3,-1:NJ3,-1:NK3)
      DIMENSION ENE3(-1:NI3,-1:NJ3,-1:NK3),PRS3(-1:NI3,-1:NJ3,-1:NK3)
      DIMENSION AKN3(-1:NI3,-1:NJ3,-1:NK3)
      do k=-1,NK3
      do j=-1,NJ3
      do i=-1,NI3
        PRS3(i,j,k) = -i
        ENE3(i,j,k) =  i
        ROW3(i,j,k) = -i*j
        AKN3(i,j,k) =  k
      enddo
      enddo
      enddo
      MZ3 = NK3-2
      MX3 = NI3-2
      MY3 = NJ3
      GAMBR = 2
      call sub(PRS3,ENE3,ROW3,AKN3,MZ3,MX3,MY3,GAMBR)
      print *, " end "
      stop
      end
      SUBROUTINE sub(PRS3,ENE3,ROW3,AKN3,MZ3,MX3,MY3,GAMBR)
      PARAMETER (NI3=49,NJ3=139,NK3=139)
      DIMENSION ROW3(-1:NI3,-1:NJ3,-1:NK3)
      DIMENSION ENE3(-1:NI3,-1:NJ3,-1:NK3),PRS3(-1:NI3,-1:NJ3,-1:NK3)
      DIMENSION AKN3(-1:NI3,-1:NJ3,-1:NK3)

      RMIN=0
      PMIN=0
      DO 33 K=-1, MZ3+2
      DO 33 I= 3, MX3-2
      DO 33 J= 1, MY3
      PRS3(I,J,K)=GAMBR*(ENE3(I,J,K)-ROW3(I,J,K)*AKN3(I,J,K))
      RMIN=AMIN1( RMIN,ROW3(I,J,K) )
      PMIN=AMIN1( PMIN,PRS3(I,J,K) )
   33 CONTINUE
      print *,RMIN
      print *,PMIN
      RETURN
      END
