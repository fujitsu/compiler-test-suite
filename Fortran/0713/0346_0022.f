       DIMENSION AX(2000),BX(2000),CX(2000),XX(2000)
       DIMENSION AA(2000),BB(4000),CC(8000)
       DATA AX,BX,CX/2000*0.0,2000*1.0,2000*2.0/
       DIMENSION ZZ(520)
       DATA ZZ/520*1.0E-6/

       DO 100 I = 1 , 1000
          AA(I) = AX(I) + BX(I)
          BB(I) = BX(I) + CX(I)
          CC(I) = AA(I) * 2.0 + CX(I)
100    CONTINUE

       IERR= 0
       INO = 1
       DO 200 I = 1 , 500
          XX(I) = CC(I) - BB(I) - AA(I)
          IF( XX(I) .GE. ZZ(I)  ) IERR = 1
200    CONTINUE
       IF( IERR .NE. 0 ) GO TO 210
       WRITE(6,1200)  INO
       GO TO 300
210    CONTINUE
       WRITE(6,1210) INO

300    CONTINUE
       DO 400 I = 1 , 1024
          CC(I+2999) = BX(I) + CX(I)
          XX(I)      = AX(I) + 3.0
400    CONTINUE

350    CONTINUE
       IERR= 0
       INO = 2
       DO 500 I = 1 , 511
          XX(I) = XX(I) - CC(I+2999)
          IF(XX(I) .GE. ZZ(I)  ) IERR = 1
500    CONTINUE
       IF( IERR .NE. 0 ) GO TO 510
       WRITE(6,1200)  INO
       STOP
510    CONTINUE
       WRITE(6,1210) INO
       STOP
1200   FORMAT(1H ,'******** TEST NO.',I2,' *****( OK )*******')
1210   FORMAT(1H ,'******** TEST NO.',I2,' *****( NG )*******',
     E  I5,3X,4(F10.5,3X)  )

2210   FORMAT(1H ,'******** TEST NO.',I2,'*****( NG )*******',
     E  I5,3X,2(F10.5,3X)  )
       END
