      PARAMETER(NP=10)
      PARAMETER(NXX=175,NYY=175,NZZ=6)
      IMPLICIT DOUBLE PRECISION(A-H,P-Z)
      COMMON/DATA00/X0(NP),Y0(NP),Z0(NP),UX0(NP),UY0(NP),UZ0(NP)
      COMMON/DATA2/DT,DX,DY,DZ,T
      COMMON/DATA1/U(NXX,NYY,NZZ,9)
      COMMON/DATA11/UX(NXX,NYY,NZZ,9)
      COMMON/DATA44/X4(NP),Y4(NP),Z4(NP),UX4(NP),UY4(NP),UZ4(NP)
      COMMON/XXYYZZ/XX1,XX2,YY1,YY2,ZZ1,ZZ2
      COMMON/SQSQ/SQ1,SQ2,SQ3,SQ4
      COMMON/RYUSHI/AA
      DATA I,FCTR/2,2.0/
      DT=1.
      DX=1.
      DY=1.
      DZ=1.
      T =1.
      DO 1 N4=1,9
        DO 1 N3=1,NZZ
          DO 1 N2=1,NYY
            DO 1 N1=1,NXX
              U (NXX,NYY,NZZ,9)=1.
              UX(NXX,NYY,NZZ,9)=1.
    1 CONTINUE

      DO 14 IP=1,NP
      IF((X0(IP).GE.XX2-1.0).OR.(X0(IP).LE. XX1)) GOTO 99
      IF((Y0(IP).GE.YY2 ).OR.(Y0(IP).LE.-YY2)) GOTO 99
      IF((Z0(IP).GE.ZZ2 ).OR.(Z0(IP).LE. ZZ1)) GOTO 99
      XQ0=0.
      YQ0=0.
      ZQ0=0.
      UXQ0=0.
      UYQ0=0.
      UZQ0=0.
      CALL CALCA(X0(IP),Y0(IP),Z0(IP),VX,VY,VZ,EX,EY,EZ,I)
      XK0=FCTR*UX0(IP)
      YK0=FCTR*UY0(IP)
      ZK0=FCTR*UZ0(IP)
      UXK0=FCTR*AA*(UY0(IP)*VZ-UZ0(IP)*VY+EX)
      UYK0=FCTR*AA*(UZ0(IP)*VX-UX0(IP)*VZ+EY)
      UZK0=FCTR*AA*(UX0(IP)*VY-UY0(IP)*VX+EZ)
      X1=0.5*(XK0-2*XQ0)+X0(IP)
      Y1=0.5*(YK0-2*YQ0)+Y0(IP)
      Z1=0.5*(ZK0-2*ZQ0)+Z0(IP)
      XQ1=XK0-2*XQ0
      YQ1=YK0-2*YQ0
      ZQ1=ZK0-2*ZQ0
      UX1=0.5*(UXK0-2*UXQ0)+UX0(IP)
      UY1=0.5*(UYK0-2*UYQ0)+UY0(IP)
      UZ1=0.5*(UZK0-2*UZQ0)+UZ0(IP)
      UXQ1=UXK0-2*UXQ0
      UYQ1=UYK0-2*UYQ0
      UZQ1=UZK0-2*UZQ0
      CALL CALCA(X1,Y1,Z1,VX,VY,VZ,EX,EY,EZ,I)
      XK1=FCTR*UX1
      YK1=FCTR*UY1
      ZK1=FCTR*UZ1
      UXK1=FCTR*AA*(UY1*VZ-UZ1*VY+EX)
      UYK1=FCTR*AA*(UZ1*VX-UX1*VZ+EY)
      UZK1=FCTR*AA*(UX1*VY-UY1*VX+EZ)
      X2=SQ2*(XK1-XQ1)+X1
      Y2=SQ2*(YK1-YQ1)+Y1
      Z2=SQ2*(ZK1-ZQ1)+Z1
      XQ2=XK1*2*SQ2-SQ4*XQ1
      YQ2=YK1*2*SQ2-SQ4*YQ1
      ZQ2=ZK1*2*SQ2-SQ4*ZQ1
      UX2=SQ2*(UXK1-UXQ1)+UX1
      UY2=SQ2*(UYK1-UYQ1)+UY1
      UZ2=SQ2*(UZK1-UZQ1)+UZ1
      UXQ2=UXK1*2*SQ2-SQ4*UXQ1
      UYQ2=UYK1*2*SQ2-SQ4*UYQ1
      UZQ2=UZK1*2*SQ2-SQ4*UZQ1
      CALL CALCA(X2,Y2,Z2,VX,VY,VZ,EX,EY,EZ,I)
      XK2=FCTR*UX2
      YK2=FCTR*UY2
      ZK2=FCTR*UZ2
      UXK2=FCTR*AA*(UY2*VZ-UZ2*VY+EX)
      UYK2=FCTR*AA*(UZ2*VX-UX2*VZ+EY)
      UZK2=FCTR*AA*(UX2*VY-UY2*VX+EZ)
      X3=SQ1*(XK2-XQ2)+X2
      Y3=SQ1*(YK2-YQ2)+Y2
      Z3=SQ1*(ZK2-ZQ2)+Z2
      XQ3=XK2*2*SQ1-SQ3*XQ2
      YQ3=YK2*2*SQ1-SQ3*YQ2
      ZQ3=ZK2*2*SQ1-SQ3*ZQ2
      UX3=SQ1*(UXK2-UXQ2)+UX2
      UY3=SQ1*(UYK2-UYQ2)+UY2
      UZ3=SQ1*(UZK2-UZQ2)+UZ2
      UXQ3=UXK2*2*SQ1-SQ3*UXQ2
      UYQ3=UYK2*2*SQ1-SQ3*UYQ2
      UZQ3=UZK2*2*SQ1-SQ3*UZQ2
      CALL CALCA(X3,Y3,Z3,VX,VY,VZ,EX,EY,EZ,I)
      XK3=FCTR*UX3
      YK3=FCTR*UY3
      ZK3=FCTR*UZ3
      UXK3=FCTR*AA*(UY3*VZ-UZ3*VY+EX)
      UYK3=FCTR*AA*(UZ3*VX-UX3*VZ+EY)
      UZK3=FCTR*AA*(UX3*VY-UY3*VX+EZ)
      X4(IP)=(XK3-2*XQ3)/6+X3
      Y4(IP)=(YK3-2*YQ3)/6+Y3
      Z4(IP)=(ZK3-2*ZQ3)/6+Z3
      UX4(IP)=(UXK3-2*UXQ3)/6+UX3
      UY4(IP)=(UYK3-2*UYQ3)/6+UY3
      UZ4(IP)=(UZK3-2*UZQ3)/6+UZ3
   99 CONTINUE
   14 CONTINUE
      print *,'test end'
      END


      SUBROUTINE CALCA(X,Y,Z,VX,VY,VZ,EX,EY,EZ,IT)
      IMPLICIT DOUBLE PRECISION(A-H,P-Z)
      IT00=251
      IF(Y.LT.0.0) THEN
      XS= X
      YS=-Y
      ZS=-Z
      CALL CALCF1(XS,YS,ZS,VVX1,VVY1,VVZ1)
      CALL CALCF2(XS,YS,ZS,VVX2,VVY2,VVZ2)
      CALL CALCE1(XS,YS,ZS,EEX1,EEY1,EEZ1)
      CALL CALCE2(XS,YS,ZS,EEX2,EEY2,EEZ2)
      VX1=-VVX1
      VY1= VVY1
      VZ1= VVZ1
      EX1=-EEX1
      EY1= EEY1
      EZ1= EEZ1
      VX2=-VVX2
      VY2= VVY2
      VZ2= VVZ2
      EX2=-EEX2
      EY2= EEY2
      EZ2= EEZ2
      ELSE
      CALL CALCF1(X ,Y ,Z , VX1, VY1, VZ1)
      CALL CALCF2(X ,Y ,Z , VX2, VY2, VZ2)
      CALL CALCE1(X ,Y ,Z , EX1, EY1, EZ1)
      CALL CALCE2(X ,Y ,Z , EX2, EY2, EZ2)
      ENDIF
      VX=(FLOAT(IT-1)*VX2+FLOAT(IT00-IT)*VX1)/FLOAT(IT00-1)
      VY=(FLOAT(IT-1)*VY2+FLOAT(IT00-IT)*VY1)/FLOAT(IT00-1)
      VZ=(FLOAT(IT-1)*VZ2+FLOAT(IT00-IT)*VZ1)/FLOAT(IT00-1)
      EX=(FLOAT(IT-1)*EX2+FLOAT(IT00-IT)*EX1)/FLOAT(IT00-1)
      EY=(FLOAT(IT-1)*EY2+FLOAT(IT00-IT)*EY1)/FLOAT(IT00-1)
      EZ=(FLOAT(IT-1)*EZ2+FLOAT(IT00-IT)*EZ1)/FLOAT(IT00-1)
      RETURN
      END

      SUBROUTINE CALCE1(X,Y,Z,VX,VY,VZ)
      IMPLICIT DOUBLE PRECISION(A-H,P-Z)
      PARAMETER(NXX=175,NYY=175,NZZ=6)
      COMMON/XXYYZZ/XX1,XX2,YY1,YY2,ZZ1,ZZ2
      COMMON/DATA2/DT,DX,DY,DZ,T
      COMMON/PDXYZ/PDX2,PDY2,PDZ2
      COMMON/DATA1/U(NXX,NYY,NZZ,9)
      XXX=X+DX*2.
      YYY=Y+DY*2.
      ZZZ=Z+DZ*2.-ZZ1
      IX=INT(XXX/DX)+1
      IY=INT(YYY/DY)+1
      IZ=INT(ZZZ/DZ)+1
      XRATE2=(XXX-FLOAT(IX-1)*DX)/DX
      YRATE2=(YYY-FLOAT(IY-1)*DY)/DY
      ZRATE2=(ZZZ-FLOAT(IZ-1)*DZ)/DZ
      XRATE1=1-XRATE2
      YRATE1=1-YRATE2
      ZRATE1=1-ZRATE2
      IXX=IX
      IYY=IY
      IZZ=IZ
      EX111=(-U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,7)
     &       +U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,6))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY+1,IZZ,7)-U(IXX,IYY-1,IZZ,7))*PDY2
     &        -(U(IXX,IYY,IZZ+1,6)-U(IXX,IYY,IZZ-1,6))*PDZ2)
      EY111=(-U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,5)
     &       +U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,7))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY,IZZ+1,5)-U(IXX,IYY,IZZ-1,5))*PDZ2
     &        -(U(IXX+1,IYY,IZZ,7)-U(IXX-1,IYY,IZZ,7))*PDX2)
      EZ111=(-U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,6)
     &       +U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,5))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX+1,IYY,IZZ,6)-U(IXX-1,IYY,IZZ,6))*PDX2
     &        -(U(IXX,IYY+1,IZZ,5)-U(IXX,IYY-1,IZZ,5))*PDY2)
      IXX=IX+1
      IYY=IY
      IZZ=IZ
      EX211=(-U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,7)
     &       +U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,6))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY+1,IZZ,7)-U(IXX,IYY-1,IZZ,7))*PDY2
     &        -(U(IXX,IYY,IZZ+1,6)-U(IXX,IYY,IZZ-1,6))*PDZ2)
      EY211=(-U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,5)
     &       +U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,7))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY,IZZ+1,5)-U(IXX,IYY,IZZ-1,5))*PDZ2
     &        -(U(IXX+1,IYY,IZZ,7)-U(IXX-1,IYY,IZZ,7))*PDX2)
      EZ211=(-U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,6)
     &       +U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,5))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX+1,IYY,IZZ,6)-U(IXX-1,IYY,IZZ,6))*PDX2
     &        -(U(IXX,IYY+1,IZZ,5)-U(IXX,IYY-1,IZZ,5))*PDY2)
      IXX=IX
      IYY=IY+1
      IZZ=IZ
      EX121=(-U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,7)
     &       +U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,6))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY+1,IZZ,7)-U(IXX,IYY-1,IZZ,7))*PDY2
     &        -(U(IXX,IYY,IZZ+1,6)-U(IXX,IYY,IZZ-1,6))*PDZ2)
      EY121=(-U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,5)
     &       +U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,7))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY,IZZ+1,5)-U(IXX,IYY,IZZ-1,5))*PDZ2
     &        -(U(IXX+1,IYY,IZZ,7)-U(IXX-1,IYY,IZZ,7))*PDX2)
      EZ121=(-U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,6)
     &       +U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,5))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX+1,IYY,IZZ,6)-U(IXX-1,IYY,IZZ,6))*PDX2
     &        -(U(IXX,IYY+1,IZZ,5)-U(IXX,IYY-1,IZZ,5))*PDY2)
      IXX=IX+1
      IYY=IY+1
      IZZ=IZ
      EX221=(-U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,7)
     &       +U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,6))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY+1,IZZ,7)-U(IXX,IYY-1,IZZ,7))*PDY2
     &        -(U(IXX,IYY,IZZ+1,6)-U(IXX,IYY,IZZ-1,6))*PDZ2)
      EY221=(-U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,5)
     &       +U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,7))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY,IZZ+1,5)-U(IXX,IYY,IZZ-1,5))*PDZ2
     &        -(U(IXX+1,IYY,IZZ,7)-U(IXX-1,IYY,IZZ,7))*PDX2)
      EZ221=(-U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,6)
     &       +U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,5))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX+1,IYY,IZZ,6)-U(IXX-1,IYY,IZZ,6))*PDX2
     &        -(U(IXX,IYY+1,IZZ,5)-U(IXX,IYY-1,IZZ,5))*PDY2)
      IXX=IX
      IYY=IY
      IZZ=IZ+1
      EX112=(-U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,7)
     &       +U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,6))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY+1,IZZ,7)-U(IXX,IYY-1,IZZ,7))*PDY2
     &        -(U(IXX,IYY,IZZ+1,6)-U(IXX,IYY,IZZ-1,6))*PDZ2)
      EY112=(-U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,5)
     &       +U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,7))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY,IZZ+1,5)-U(IXX,IYY,IZZ-1,5))*PDZ2
     &        -(U(IXX+1,IYY,IZZ,7)-U(IXX-1,IYY,IZZ,7))*PDX2)
      EZ112=(-U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,6)
     &       +U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,5))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX+1,IYY,IZZ,6)-U(IXX-1,IYY,IZZ,6))*PDX2
     &        -(U(IXX,IYY+1,IZZ,5)-U(IXX,IYY-1,IZZ,5))*PDY2)
      IXX=IX+1
      IYY=IY
      IZZ=IZ+1
      EX212=(-U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,7)
     &       +U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,6))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY+1,IZZ,7)-U(IXX,IYY-1,IZZ,7))*PDY2
     &        -(U(IXX,IYY,IZZ+1,6)-U(IXX,IYY,IZZ-1,6))*PDZ2)
      EY212=(-U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,5)
     &       +U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,7))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY,IZZ+1,5)-U(IXX,IYY,IZZ-1,5))*PDZ2
     &        -(U(IXX+1,IYY,IZZ,7)-U(IXX-1,IYY,IZZ,7))*PDX2)
      EZ212=(-U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,6)
     &       +U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,5))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX+1,IYY,IZZ,6)-U(IXX-1,IYY,IZZ,6))*PDX2
     &        -(U(IXX,IYY+1,IZZ,5)-U(IXX,IYY-1,IZZ,5))*PDY2)
      IXX=IX
      IYY=IY+1
      IZZ=IZ+1
      EX122=(-U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,7)
     &       +U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,6))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY+1,IZZ,7)-U(IXX,IYY-1,IZZ,7))*PDY2
     &        -(U(IXX,IYY,IZZ+1,6)-U(IXX,IYY,IZZ-1,6))*PDZ2)
      EY122=(-U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,5)
     &       +U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,7))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY,IZZ+1,5)-U(IXX,IYY,IZZ-1,5))*PDZ2
     &        -(U(IXX+1,IYY,IZZ,7)-U(IXX-1,IYY,IZZ,7))*PDX2)
      EZ122=(-U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,6)
     &       +U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,5))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX+1,IYY,IZZ,6)-U(IXX-1,IYY,IZZ,6))*PDX2
     &        -(U(IXX,IYY+1,IZZ,5)-U(IXX,IYY-1,IZZ,5))*PDY2)
      IXX=IX+1
      IYY=IY+1
      IZZ=IZ+1
      EX222=(-U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,7)
     &       +U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,6))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY+1,IZZ,7)-U(IXX,IYY-1,IZZ,7))*PDY2
     &        -(U(IXX,IYY,IZZ+1,6)-U(IXX,IYY,IZZ-1,6))*PDZ2)
      EY222=(-U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,5)
     &       +U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,7))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY,IZZ+1,5)-U(IXX,IYY,IZZ-1,5))*PDZ2
     &        -(U(IXX+1,IYY,IZZ,7)-U(IXX-1,IYY,IZZ,7))*PDX2)
      EZ222=(-U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,6)
     &       +U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,5))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX+1,IYY,IZZ,6)-U(IXX-1,IYY,IZZ,6))*PDX2
     &        -(U(IXX,IYY+1,IZZ,5)-U(IXX,IYY-1,IZZ,5))*PDY2)
      VX=((EX111*XRATE1+EX211*XRATE2)*YRATE1
     &   +(EX121*XRATE1+EX221*XRATE2)*YRATE2)*ZRATE1
     &  +((EX112*XRATE1+EX212*XRATE2)*YRATE1
     &   +(EX122*XRATE1+EX222*XRATE2)*YRATE2)*ZRATE2
      VY=((EY111*XRATE1+EY211*XRATE2)*YRATE1
     &   +(EY121*XRATE1+EY221*XRATE2)*YRATE2)*ZRATE1
     &  +((EY112*XRATE1+EY212*XRATE2)*YRATE1
     &   +(EY122*XRATE1+EY222*XRATE2)*YRATE2)*ZRATE2
      VZ=((EZ111*XRATE1+EZ211*XRATE2)*YRATE1
     &   +(EZ121*XRATE1+EZ221*XRATE2)*YRATE2)*ZRATE1
     &  +((EZ112*XRATE1+EZ212*XRATE2)*YRATE1
     &   +(EZ122*XRATE1+EZ222*XRATE2)*YRATE2)*ZRATE2

      RETURN
      END
      SUBROUTINE CALCE2(X,Y,Z,VX,VY,VZ)
      IMPLICIT DOUBLE PRECISION(A-H,P-Z)
      PARAMETER(NXX=175,NYY=175,NZZ=6)
      COMMON/XXYYZZ/XX1,XX2,YY1,YY2,ZZ1,ZZ2
      COMMON/DATA2/DT,DX,DY,DZ,T
      COMMON/PDXYZ/PDX2,PDY2,PDZ2
      COMMON/DATA11/U(NXX,NYY,NZZ,9)
      XXX=X+DX*2.
      YYY=Y+DY*2.
      ZZZ=Z+DZ*2.-ZZ1
      IX=INT(XXX/DX)+1
      IY=INT(YYY/DY)+1
      IZ=INT(ZZZ/DZ)+1
      XRATE2=(XXX-FLOAT(IX-1)*DX)/DX
      YRATE2=(YYY-FLOAT(IY-1)*DY)/DY
      ZRATE2=(ZZZ-FLOAT(IZ-1)*DZ)/DZ
      XRATE1=1-XRATE2
      YRATE1=1-YRATE2
      ZRATE1=1-ZRATE2
      IXX=IX
      IYY=IY
      IZZ=IZ
      EX111=(-U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,7)
     &       +U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,6))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY+1,IZZ,7)-U(IXX,IYY-1,IZZ,7))*PDY2
     &        -(U(IXX,IYY,IZZ+1,6)-U(IXX,IYY,IZZ-1,6))*PDZ2)
      EY111=(-U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,5)
     &       +U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,7))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY,IZZ+1,5)-U(IXX,IYY,IZZ-1,5))*PDZ2
     &        -(U(IXX+1,IYY,IZZ,7)-U(IXX-1,IYY,IZZ,7))*PDX2)
      EZ111=(-U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,6)
     &       +U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,5))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX+1,IYY,IZZ,6)-U(IXX-1,IYY,IZZ,6))*PDX2
     &        -(U(IXX,IYY+1,IZZ,5)-U(IXX,IYY-1,IZZ,5))*PDY2)
      IXX=IX+1
      IYY=IY
      IZZ=IZ
      EX211=(-U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,7)
     &       +U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,6))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY+1,IZZ,7)-U(IXX,IYY-1,IZZ,7))*PDY2
     &        -(U(IXX,IYY,IZZ+1,6)-U(IXX,IYY,IZZ-1,6))*PDZ2)
      EY211=(-U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,5)
     &       +U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,7))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY,IZZ+1,5)-U(IXX,IYY,IZZ-1,5))*PDZ2
     &        -(U(IXX+1,IYY,IZZ,7)-U(IXX-1,IYY,IZZ,7))*PDX2)
      EZ211=(-U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,6)
     &       +U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,5))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX+1,IYY,IZZ,6)-U(IXX-1,IYY,IZZ,6))*PDX2
     &        -(U(IXX,IYY+1,IZZ,5)-U(IXX,IYY-1,IZZ,5))*PDY2)
      IXX=IX
      IYY=IY+1
      IZZ=IZ
      EX121=(-U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,7)
     &       +U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,6))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY+1,IZZ,7)-U(IXX,IYY-1,IZZ,7))*PDY2
     &        -(U(IXX,IYY,IZZ+1,6)-U(IXX,IYY,IZZ-1,6))*PDZ2)
      EY121=(-U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,5)
     &       +U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,7))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY,IZZ+1,5)-U(IXX,IYY,IZZ-1,5))*PDZ2
     &        -(U(IXX+1,IYY,IZZ,7)-U(IXX-1,IYY,IZZ,7))*PDX2)
      EZ121=(-U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,6)
     &       +U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,5))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX+1,IYY,IZZ,6)-U(IXX-1,IYY,IZZ,6))*PDX2
     &        -(U(IXX,IYY+1,IZZ,5)-U(IXX,IYY-1,IZZ,5))*PDY2)
      IXX=IX+1
      IYY=IY+1
      IZZ=IZ
      EX221=(-U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,7)
     &       +U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,6))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY+1,IZZ,7)-U(IXX,IYY-1,IZZ,7))*PDY2
     &        -(U(IXX,IYY,IZZ+1,6)-U(IXX,IYY,IZZ-1,6))*PDZ2)
      EY221=(-U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,5)
     &       +U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,7))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY,IZZ+1,5)-U(IXX,IYY,IZZ-1,5))*PDZ2
     &        -(U(IXX+1,IYY,IZZ,7)-U(IXX-1,IYY,IZZ,7))*PDX2)
      EZ221=(-U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,6)
     &       +U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,5))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX+1,IYY,IZZ,6)-U(IXX-1,IYY,IZZ,6))*PDX2
     &        -(U(IXX,IYY+1,IZZ,5)-U(IXX,IYY-1,IZZ,5))*PDY2)
      IXX=IX
      IYY=IY
      IZZ=IZ+1
      EX112=(-U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,7)
     &       +U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,6))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY+1,IZZ,7)-U(IXX,IYY-1,IZZ,7))*PDY2
     &        -(U(IXX,IYY,IZZ+1,6)-U(IXX,IYY,IZZ-1,6))*PDZ2)
      EY112=(-U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,5)
     &       +U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,7))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY,IZZ+1,5)-U(IXX,IYY,IZZ-1,5))*PDZ2
     &        -(U(IXX+1,IYY,IZZ,7)-U(IXX-1,IYY,IZZ,7))*PDX2)
      EZ112=(-U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,6)
     &       +U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,5))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX+1,IYY,IZZ,6)-U(IXX-1,IYY,IZZ,6))*PDX2
     &        -(U(IXX,IYY+1,IZZ,5)-U(IXX,IYY-1,IZZ,5))*PDY2)
      IXX=IX+1
      IYY=IY
      IZZ=IZ+1
      EX212=(-U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,7)
     &       +U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,6))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY+1,IZZ,7)-U(IXX,IYY-1,IZZ,7))*PDY2
     &        -(U(IXX,IYY,IZZ+1,6)-U(IXX,IYY,IZZ-1,6))*PDZ2)
      EY212=(-U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,5)
     &       +U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,7))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY,IZZ+1,5)-U(IXX,IYY,IZZ-1,5))*PDZ2
     &        -(U(IXX+1,IYY,IZZ,7)-U(IXX-1,IYY,IZZ,7))*PDX2)
      EZ212=(-U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,6)
     &       +U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,5))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX+1,IYY,IZZ,6)-U(IXX-1,IYY,IZZ,6))*PDX2
     &        -(U(IXX,IYY+1,IZZ,5)-U(IXX,IYY-1,IZZ,5))*PDY2)
      IXX=IX
      IYY=IY+1
      IZZ=IZ+1
      EX122=(-U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,7)
     &       +U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,6))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY+1,IZZ,7)-U(IXX,IYY-1,IZZ,7))*PDY2
     &        -(U(IXX,IYY,IZZ+1,6)-U(IXX,IYY,IZZ-1,6))*PDZ2)
      EY122=(-U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,5)
     &       +U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,7))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY,IZZ+1,5)-U(IXX,IYY,IZZ-1,5))*PDZ2
     &        -(U(IXX+1,IYY,IZZ,7)-U(IXX-1,IYY,IZZ,7))*PDX2)
      EZ122=(-U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,6)
     &       +U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,5))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX+1,IYY,IZZ,6)-U(IXX-1,IYY,IZZ,6))*PDX2
     &        -(U(IXX,IYY+1,IZZ,5)-U(IXX,IYY-1,IZZ,5))*PDY2)
      IXX=IX+1
      IYY=IY+1
      IZZ=IZ+1
      EX222=(-U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,7)
     &       +U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,6))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY+1,IZZ,7)-U(IXX,IYY-1,IZZ,7))*PDY2
     &        -(U(IXX,IYY,IZZ+1,6)-U(IXX,IYY,IZZ-1,6))*PDZ2)
      EY222=(-U(IXX,IYY,IZZ,4)*U(IXX,IYY,IZZ,5)
     &       +U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,7))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX,IYY,IZZ+1,5)-U(IXX,IYY,IZZ-1,5))*PDZ2
     &        -(U(IXX+1,IYY,IZZ,7)-U(IXX-1,IYY,IZZ,7))*PDX2)
      EZ222=(-U(IXX,IYY,IZZ,2)*U(IXX,IYY,IZZ,6)
     &       +U(IXX,IYY,IZZ,3)*U(IXX,IYY,IZZ,5))
     &      /U(IXX,IYY,IZZ,1)+U(IXX,IYY,IZZ,9)*
     &        ((U(IXX+1,IYY,IZZ,6)-U(IXX-1,IYY,IZZ,6))*PDX2
     &        -(U(IXX,IYY+1,IZZ,5)-U(IXX,IYY-1,IZZ,5))*PDY2)
      VX=((EX111*XRATE1+EX211*XRATE2)*YRATE1
     &   +(EX121*XRATE1+EX221*XRATE2)*YRATE2)*ZRATE1
     &  +((EX112*XRATE1+EX212*XRATE2)*YRATE1
     &   +(EX122*XRATE1+EX222*XRATE2)*YRATE2)*ZRATE2
      VY=((EY111*XRATE1+EY211*XRATE2)*YRATE1
     &   +(EY121*XRATE1+EY221*XRATE2)*YRATE2)*ZRATE1
     &  +((EY112*XRATE1+EY212*XRATE2)*YRATE1
     &   +(EY122*XRATE1+EY222*XRATE2)*YRATE2)*ZRATE2
      VZ=((EZ111*XRATE1+EZ211*XRATE2)*YRATE1
     &   +(EZ121*XRATE1+EZ221*XRATE2)*YRATE2)*ZRATE1
     &  +((EZ112*XRATE1+EZ212*XRATE2)*YRATE1
     &   +(EZ122*XRATE1+EZ222*XRATE2)*YRATE2)*ZRATE2

      RETURN
      END
      SUBROUTINE CALCF1(X,Y,Z,VX,VY,VZ)
      IMPLICIT DOUBLE PRECISION(A-H,P-Z)
      PARAMETER(NXX=175,NYY=175,NZZ=6)
      COMMON/XXYYZZ/XX1,XX2,YY1,YY2,ZZ1,ZZ2
      COMMON/DATA2/DT,DX,DY,DZ,T
      COMMON/DATA1/U(NXX,NYY,NZZ,9)
      XXX=X+DX*2.
      YYY=Y+DY*2.
      ZZZ=Z+DZ*2.-ZZ1
      IX=INT(XXX/DX)+1
      IY=INT(YYY/DY)+1
      IZ=INT(ZZZ/DZ)+1
      XRAT=(XXX-FLOAT(IX-1)*DX)/DX*2-1
      YRAT=(YYY-FLOAT(IY-1)*DY)/DY*2-1
      ZRAT=(ZZZ-FLOAT(IZ-1)*DZ)/DZ*2-1
      XRAT1=(1-XRAT)*0.5
      YRAT1=(1-YRAT)*0.5
      ZRAT1=(1-ZRAT)*0.5
      XRAT2=(1+XRAT)*0.5
      YRAT2=(1+YRAT)*0.5
      ZRAT2=(1+ZRAT)*0.5
      XXRAT1=-XRAT1*XRAT1
      YYRAT1=-YRAT1*YRAT1
      ZZRAT1=-ZRAT1*ZRAT1
      XXRAT2= XRAT2*XRAT2
      YYRAT2= YRAT2*YRAT2
      ZZRAT2= ZRAT2*ZRAT2
      VX=
     & (((U(IX+1,IY  ,IZ,5)-U(IX-1,IY  ,IZ,5))*XXRAT1
     &  +(U(IX+1,IY  ,IZ,5)+U(IX  ,IY  ,IZ,5))*2
     &  +(U(IX+2,IY  ,IZ,5)-U(IX  ,IY  ,IZ,5))*XXRAT2)*YRAT1
     & +((U(IX+1,IY+1,IZ,5)-U(IX-1,IY+1,IZ,5))*XXRAT1
     &  +(U(IX+1,IY+1,IZ,5)+U(IX  ,IY+1,IZ,5))*2
     &  +(U(IX+2,IY+1,IZ,5)-U(IX  ,IY+1,IZ,5))*XXRAT2)*YRAT2)*ZRAT1
     &+(((U(IX+1,IY  ,IZ+1,5)-U(IX-1,IY  ,IZ+1,5))*XXRAT1
     &  +(U(IX+1,IY  ,IZ+1,5)+U(IX  ,IY  ,IZ+1,5))*2
     &  +(U(IX+2,IY  ,IZ+1,5)-U(IX  ,IY  ,IZ+1,5))*XXRAT2)*YRAT1
     & +((U(IX+1,IY+1,IZ+1,5)-U(IX-1,IY+1,IZ+1,5))*XXRAT1
     &  +(U(IX+1,IY+1,IZ+1,5)+U(IX  ,IY+1,IZ+1,5))*2  +
     &(U(IX+2,IY+1,IZ+1,5)-U(IX  ,IY+1,IZ+1,5))*XXRAT2)*YRAT2)*ZRAT2
      VY=
     & (((U(IX  ,IY+1,IZ  ,6)-U(IX  ,IY-1,IZ  ,6))*YYRAT1
     &  +(U(IX  ,IY+1,IZ  ,6)+U(IX  ,IY  ,IZ  ,6))*2
     &  +(U(IX  ,IY+2,IZ  ,6)-U(IX  ,IY  ,IZ  ,6))*YYRAT2)*XRAT1
     & +((U(IX+1,IY+1,IZ  ,6)-U(IX+1,IY-1,IZ  ,6))*YYRAT1
     &  +(U(IX+1,IY+1,IZ  ,6)+U(IX+1,IY  ,IZ  ,6))*2
     &+(U(IX+1,IY+2,IZ  ,6)-U(IX+1,IY  ,IZ  ,6))*YYRAT2)*XRAT2)*ZRAT1
     &+(((U(IX  ,IY+1,IZ+1,6)-U(IX  ,IY-1,IZ+1,6))*YYRAT1
     &  +(U(IX  ,IY+1,IZ+1,6)+U(IX  ,IY  ,IZ+1,6))*2
     &  +(U(IX  ,IY+2,IZ+1,6)-U(IX  ,IY  ,IZ+1,6))*YYRAT2)*XRAT1
     & +((U(IX+1,IY+1,IZ+1,6)-U(IX+1,IY-1,IZ+1,6))*YYRAT1
     &  +(U(IX+1,IY+1,IZ+1,6)+U(IX+1,IY  ,IZ+1,6))*2
     &+(U(IX+1,IY+2,IZ+1,6)-U(IX+1,IY  ,IZ+1,6))*YYRAT2)*XRAT2)*ZRAT2
      VZ=
     & (((U(IX  ,IY  ,IZ+1,7)-U(IX  ,IY  ,IZ-1,7))*ZZRAT1
     &  +(U(IX  ,IY  ,IZ+1,7)+U(IX  ,IY  ,IZ  ,7))*2
     &  +(U(IX  ,IY  ,IZ+2,7)-U(IX  ,IY  ,IZ  ,7))*ZZRAT2)*XRAT1
     & +((U(IX+1,IY  ,IZ+1,7)-U(IX+1,IY  ,IZ-1,7))*ZZRAT1
     &  +(U(IX+1,IY  ,IZ+1,7)+U(IX+1,IY  ,IZ  ,7))*2
     &+(U(IX+1,IY  ,IZ+2,7)-U(IX+1,IY  ,IZ  ,7))*ZZRAT2)*XRAT2)*YRAT1
     &+(((U(IX  ,IY+1,IZ+1,7)-U(IX  ,IY+1,IZ-1,7))*ZZRAT1
     &  +(U(IX  ,IY+1,IZ+1,7)+U(IX  ,IY+1,IZ  ,7))*2
     &  +(U(IX  ,IY+1,IZ+2,7)-U(IX  ,IY+1,IZ  ,7))*ZZRAT2)*XRAT1
     & +((U(IX+1,IY+1,IZ+1,7)-U(IX+1,IY+1,IZ-1,7))*ZZRAT1
     &  +(U(IX+1,IY+1,IZ+1,7)+U(IX+1,IY+1,IZ  ,7))*2
     &+(U(IX+1,IY+1,IZ+2,7)-U(IX+1,IY+1,IZ  ,7))*ZZRAT2)*XRAT2)*YRAT2
      VX=VX*0.25
      VY=VY*0.25
      VZ=VZ*0.25
      RETURN
      END
      SUBROUTINE CALCF2(X,Y,Z,VX,VY,VZ)
      IMPLICIT DOUBLE PRECISION(A-H,P-Z)
      PARAMETER(NXX=175,NYY=175,NZZ=6)
      COMMON/XXYYZZ/XX1,XX2,YY1,YY2,ZZ1,ZZ2
      COMMON/DATA2/DT,DX,DY,DZ,T
      COMMON/DATA11/U(NXX,NYY,NZZ,9)
      XXX=X+DX*2.
      YYY=Y+DY*2.
      ZZZ=Z+DZ*2.-ZZ1
      IX=INT(XXX/DX)+1
      IY=INT(YYY/DY)+1
      IZ=INT(ZZZ/DZ)+1
      XRAT=(XXX-FLOAT(IX-1)*DX)/DX*2-1
      YRAT=(YYY-FLOAT(IY-1)*DY)/DY*2-1
      ZRAT=(ZZZ-FLOAT(IZ-1)*DZ)/DZ*2-1
      XRAT1=(1-XRAT)*0.5
      YRAT1=(1-YRAT)*0.5
      ZRAT1=(1-ZRAT)*0.5
      XRAT2=(1+XRAT)*0.5
      YRAT2=(1+YRAT)*0.5
      ZRAT2=(1+ZRAT)*0.5
      XXRAT1=-XRAT1*XRAT1
      YYRAT1=-YRAT1*YRAT1
      ZZRAT1=-ZRAT1*ZRAT1
      XXRAT2= XRAT2*XRAT2
      YYRAT2= YRAT2*YRAT2
      ZZRAT2= ZRAT2*ZRAT2
      VX=
     & (((U(IX+1,IY  ,IZ,5)-U(IX-1,IY  ,IZ,5))*XXRAT1
     &  +(U(IX+1,IY  ,IZ,5)+U(IX  ,IY  ,IZ,5))*2
     &  +(U(IX+2,IY  ,IZ,5)-U(IX  ,IY  ,IZ,5))*XXRAT2)*YRAT1
     & +((U(IX+1,IY+1,IZ,5)-U(IX-1,IY+1,IZ,5))*XXRAT1
     &  +(U(IX+1,IY+1,IZ,5)+U(IX  ,IY+1,IZ,5))*2
     &  +(U(IX+2,IY+1,IZ,5)-U(IX  ,IY+1,IZ,5))*XXRAT2)*YRAT2)*ZRAT1
     &+(((U(IX+1,IY  ,IZ+1,5)-U(IX-1,IY  ,IZ+1,5))*XXRAT1
     &  +(U(IX+1,IY  ,IZ+1,5)+U(IX  ,IY  ,IZ+1,5))*2
     &  +(U(IX+2,IY  ,IZ+1,5)-U(IX  ,IY  ,IZ+1,5))*XXRAT2)*YRAT1
     & +((U(IX+1,IY+1,IZ+1,5)-U(IX-1,IY+1,IZ+1,5))*XXRAT1
     &  +(U(IX+1,IY+1,IZ+1,5)+U(IX  ,IY+1,IZ+1,5))*2  +
     &(U(IX+2,IY+1,IZ+1,5)-U(IX  ,IY+1,IZ+1,5))*XXRAT2)*YRAT2)*ZRAT2
      VY=
     & (((U(IX  ,IY+1,IZ  ,6)-U(IX  ,IY-1,IZ  ,6))*YYRAT1
     &  +(U(IX  ,IY+1,IZ  ,6)+U(IX  ,IY  ,IZ  ,6))*2
     &  +(U(IX  ,IY+2,IZ  ,6)-U(IX  ,IY  ,IZ  ,6))*YYRAT2)*XRAT1
     & +((U(IX+1,IY+1,IZ  ,6)-U(IX+1,IY-1,IZ  ,6))*YYRAT1
     &  +(U(IX+1,IY+1,IZ  ,6)+U(IX+1,IY  ,IZ  ,6))*2
     &+(U(IX+1,IY+2,IZ  ,6)-U(IX+1,IY  ,IZ  ,6))*YYRAT2)*XRAT2)*ZRAT1
     &+(((U(IX  ,IY+1,IZ+1,6)-U(IX  ,IY-1,IZ+1,6))*YYRAT1
     &  +(U(IX  ,IY+1,IZ+1,6)+U(IX  ,IY  ,IZ+1,6))*2
     &  +(U(IX  ,IY+2,IZ+1,6)-U(IX  ,IY  ,IZ+1,6))*YYRAT2)*XRAT1
     & +((U(IX+1,IY+1,IZ+1,6)-U(IX+1,IY-1,IZ+1,6))*YYRAT1
     &  +(U(IX+1,IY+1,IZ+1,6)+U(IX+1,IY  ,IZ+1,6))*2
     &+(U(IX+1,IY+2,IZ+1,6)-U(IX+1,IY  ,IZ+1,6))*YYRAT2)*XRAT2)*ZRAT2
      VZ=
     & (((U(IX  ,IY  ,IZ+1,7)-U(IX  ,IY  ,IZ-1,7))*ZZRAT1
     &  +(U(IX  ,IY  ,IZ+1,7)+U(IX  ,IY  ,IZ  ,7))*2
     &  +(U(IX  ,IY  ,IZ+2,7)-U(IX  ,IY  ,IZ  ,7))*ZZRAT2)*XRAT1
     & +((U(IX+1,IY  ,IZ+1,7)-U(IX+1,IY  ,IZ-1,7))*ZZRAT1
     &  +(U(IX+1,IY  ,IZ+1,7)+U(IX+1,IY  ,IZ  ,7))*2
     &+(U(IX+1,IY  ,IZ+2,7)-U(IX+1,IY  ,IZ  ,7))*ZZRAT2)*XRAT2)*YRAT1
     &+(((U(IX  ,IY+1,IZ+1,7)-U(IX  ,IY+1,IZ-1,7))*ZZRAT1
     &  +(U(IX  ,IY+1,IZ+1,7)+U(IX  ,IY+1,IZ  ,7))*2
     &  +(U(IX  ,IY+1,IZ+2,7)-U(IX  ,IY+1,IZ  ,7))*ZZRAT2)*XRAT1
     & +((U(IX+1,IY+1,IZ+1,7)-U(IX+1,IY+1,IZ-1,7))*ZZRAT1
     &  +(U(IX+1,IY+1,IZ+1,7)+U(IX+1,IY+1,IZ  ,7))*2
     &+(U(IX+1,IY+1,IZ+2,7)-U(IX+1,IY+1,IZ  ,7))*ZZRAT2)*XRAT2)*YRAT2
      VX=VX*0.25
      VY=VY*0.25
      VZ=VZ*0.25
      RETURN
      END
