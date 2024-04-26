      PARAMETER ( JPRY=140 )
      PARAMETER ( IPRX=18 )
      DIMENSION FCBUF(IPRX,JPRY), FC(IPRX,JPRY)

      call init(JNY1,JNY2,NX,IPRX,JPRY)
      DO 35 NY1=JNY1+1,JNY2
         DO 36 NX1=1,NX
            FCBUF(NX1,NY1)=1.0
            FC(NX1,NY1)=2.0
 36            CONTINUE
 35            CONTINUE

      call dummy(FCBUF,FC)
      print *,"pass"
      END

      subroutine init(JNY1,JNY2,NX,IPRX,JPRY)
      JNY1=1
      JNY2=JPRY
      NX=IPRX
      end

      subroutine dummy(FCBUF,FC)
      PARAMETER ( JPRY=140 )
      PARAMETER ( IPRX=18 )
      DIMENSION FCBUF(IPRX,JPRY), FC(IPRX,JPRY)
      end


