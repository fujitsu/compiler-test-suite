      PROGRAM MAIN
      IMPLICIT  REAL*8(D),COMPLEX*16(C),LOGICAL*4(L)
      DIMENSION   DA10(100),DA20(100),DA30(100),DA40(100),
     *         DB10(50,2),DB20(50,2),DB30(50,2),
     *         CD10(100),CD20(100),CD30(100),
     *         LD10(100),LD20(100),LD30(100)
      EQUIVALENCE  (DA10(1),DB10(1,1)),(DA40(1),DB30(1,1))

      DATA   DA10,DA20,DA30/100*1.D0,100*4.D0,100*2.D0/
      DATA   DA40,DB20/100*3.D0,100*5.D0/
      DATA   CD10,CD20/100*(1.5D0,2.2D0),100*(0.2D0,-2.0D0)/
      DATA   CD30/50*(-1.D0,0.5D0),50*(2.5D0,4.D0)/
      DATA   LD10,LD20,LD30/300*.FALSE./
      DATA   IT1/1/,IT2/2/,IT3/5/,IT4/10/,IT5/20/

      DO 10 I=IT1,IT2
        IL1 = I*2+IT2
        IL2 = I*2+IT4
        DO 10 J=IL1,IT5
          JL1 = J*IT2-IT1
          JL2 = J*IT2+IT2
          DA10(IL1) = DA10(IL1) + DA20(JL1)
          DX = DREAL(CD10(IL2)) * DFLOAT(I)
          DY = DIMAG(CD10(JL1)) * DFLOAT(IT2)
          DA40(JL1) = DA40(JL2) - DB30(JL2,I)
          IF ( DX - DY ) 15,16,16
 15         DZ = DY - DIMAG(CD30(JL1))
            CD20(JL2) = DCMPLX(DX,DZ)
            GO TO 17
 16         DZ = DX - DIMAG(CD20(JL1))
            CD30(JL2) = DCMPLX(DY,DZ)
            LD10(J) = .TRUE.
 17       CONTINUE
          DA20(J) = DA20(JL2) + DMAX1(DZ,DX) - DY
 10   CONTINUE

      DO 20 I=1,IT2
        IL1 = 50 - I*2
        IL2 = I+3
        DO 30 J=IL2,IL1
          IP = 100 - J*IT2
          JP = J*2
          DA30(101-JP) = DA30(100-JP) - DA40(IL2*IT3)
          DB20(J+1,I) = DB30(J,I) + DA20(IP-1)
          DX = DFLOAT(IP) - DB10(J,I)
          IF ( DX ) 31,32,32
 31         LD20(J) = .TRUE.
            DY = DREAL(CD10(IL1))
            DZ = DIMAG(CD10(IL2))
            IF ( DX - DY ) 33,34,34
 33           LD30(J) = .TRUE.
              CD20(IL2) = CD20(IL2) + DCMPLX(DX,DZ)
              GO TO 35
 32         LD10(J) = .TRUE.
            GO TO 33
 34       CONTINUE
          LD20(JP) = .NOT.LD10(J) .AND. LD30(JP)
          DA20(100-J) = DA20(IP) + DX
 35       CONTINUE
          CD30(IP) = CD30(99-J*IT2) + DCMPLX(DZ,DX)
 30     CONTINUE
 20   CONTINUE
      WRITE(6,*) ' (DA10) ',DA10
      WRITE(6,*) ' (DA20) ',DA20
      WRITE(6,*) ' (DA30) ',DA30
      WRITE(6,*) ' (DA40) ',DA40
      WRITE(6,*) ' (CD10) ',CD10
      WRITE(6,*) ' (CD20) ',CD20
      WRITE(6,*) ' (CD30) ',CD30

      DO 40 I=1,2
        DO 40 J=I,I+IT2*IT3+IT4
          DB20(J,I) = DB20(2*J,I) - DMIN1(DB10(J,I),DB30(J,I))
 40   CONTINUE
      WRITE(6,*) '(DB20) ',DB20
      ICNT1 = 0
      ICNT2 = 0

      DO 50 I=1,IT3*IT4
        IP = 101 - I
        IF ( LD10(I) .OR. LD20(I) ) THEN
          ICNT1 = ICNT1 + 1
        ENDIF
        LD10(IP) = .NOT.LD30(IP) .AND. .NOT.LD20(I*2)
        IF ( LD10(IP) ) THEN
          LD20(I) = .NOT.LD30(I) .OR. LD10(51-I)
          ICNT2 = ICNT2 + 1
        ENDIF
 50   CONTINUE
      WRITE(6,*) ' ICNT1 = ',ICNT1 ,' ICNT2 = ',ICNT2
      STOP
      END
