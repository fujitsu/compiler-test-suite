      PROGRAM MAIN
      INTEGER*1                INT1(10)
      INTEGER*2                INT2(10)
      INTEGER*4                INT4(10)
      INTEGER*1                INT1A(10)
      INTEGER*2                INT2A(10)
      INTEGER*4                INT4A(10)
      INTEGER*8                INT8(10)
      INTEGER*8                INT8A(10)
      INTEGER*8                I8A,I8B
      PARAMETER               (I8A=Z'00000000000000010000000200000001')
      PARAMETER               (I8B=Z'00000000000000030000000400000003')
      CHARACTER*20             CARN
      CHARACTER*1              CARN1(10)
      CHARACTER*2              CARN2(10)
      EQUIVALENCE              (INT4,INT8)
      EQUIVALENCE              (CARN2(1),CARN1(1))
      EQUIVALENCE              (CARN    ,CARN1(1))

      DO I=1,10
         INT1(I)=I
         INT2(I)=11-I
         INT4(I)=I
      ENDDO
      CALL SUB1(INT1,INT2,INT4)

      REWIND 114
      WRITE(114,*) (INT1(I),I=1,10)
      REWIND 114
      READ (114,*) (INT1A(I),I=1,10)
      REWIND 114
      WRITE(114,*) (INT2(I),I=1,10)
      REWIND 114
      READ (114,*) (INT2A(I),I=1,10)
      REWIND 114
      WRITE(114,*) (INT4(I),I=1,10)
      REWIND 114
      READ (114,*) (INT4A(I),I=1,10)
      DO 1111 I=1,10
      IF(INT1A(I).NE.I) print *,"fail"
      IF(INT2A(I).NE.11-I) print *,"fail"
1111  IF(INT4A(I).NE.I) print *,"fail"

      REWIND 114
      WRITE(114,*) INT8(1),INT8(2)
      REWIND 114
      READ (114,*) INT8A(1),INT8A(2)
      IF (INT8A(1).NE.I8A) print *,"fail"


      IF (INT8A(2).NE.I8B) print *,"fail"
      REWIND 114

      DO I=1,10
         SELECT CASE(I)
          CASE(1  )
           CARN2(I)='FO'
          CASE(2  )
           CARN2(I)='RT'
          CASE(3  )
           CARN2(I)='RA'
          CASE(4  )
           CARN2(I)='N '
          CASE(5   )
           CARN2(I)='OK'
          CASE(6,7,8,9,10   )
           CARN2(I)='  '
         END SELECT
      ENDDO
      IF (CARN.NE.'FORTRAN OK') print *,"fail"
      CALL    SUB2(CARN2)




      PRINT *,'PASS'
      STOP
      END

      SUBROUTINE SUB1(INT1,INT2,INT4)

      INTEGER*1         INT1(10),WORK1
      INTEGER*2         INT2(10),WORK2
      INTEGER*4         INT4(10),WORK3

      DO 100 J=1,10
       WORK1=INT1(J)
       WORK2=INT2(J)
       WORK3=INT4(J)
       DO 10 I=J+1,10

        IF(WORK1.GT.INT1(I)) THEN
        WORK    = INT1(I)
        INT1(I) = WORK1
        WORK1   = WORK
        ENDIF

        IF(WORK2.LT.INT2(I)) THEN
        WORK    = INT2(I)
        INT2(I) = WORK2
        WORK2   = WORK
        ENDIF

        IF(WORK3.GT.INT4(I)) THEN
        WORK    = INT4(I)
        INT4(I) = WORK3
        WORK3   = WORK
        ENDIF

   10   CONTINUE
        INT1(J)=WORK1
        INT2(J)=WORK2
        INT4(J)=WORK3
  100   CONTINUE
      RETURN
      END SUBROUTINE SUB1

      SUBROUTINE SUB2(CARN2)

      CHARACTER*2     CARN2(10)
      CHARACTER*4     CARNW(5)


      DO 1 I=1,5
      DO 1 J=1,10,3
       CARNW(I)(1:2)=CARN2(I)(1:2)
       CARNW(I)(3:4)=CARN2(I+5)(1:2)
 1    CONTINUE


      WRITE(114,*) ((CARNW(I)(J:J),I=1,5),J=1,4)
      RETURN
      END SUBROUTINE SUB2
