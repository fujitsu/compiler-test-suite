      PROGRAM MAIN
       LOGICAL*1 L1A1(10)
       LOGICAL*4 L4S1(20)/20*.false./
       DATA L1A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./
       LOGICAL*1 LL13,LL18

       LL18 = .false.
       DO II10=0,11
        GO TO (205,210),  II10
        DO I1=1,10
        END DO

        GO TO 214
 205       DO I1=1,6,5
         LL13 = L1A1(I1)
        enddo
        DO I1=1,6,5
         LL13 = L1A1(I1+1)
        enddo
        L4S1(4) = LL13
 210       DO I1=1,6,5
        END DO
        L4S1(9) = LL18
        GO TO 214
 214       CONTINUE
       END DO

       WRITE (6, *) '** LOGICAL * 4 **'
       WRITE (6, *) L4S1
       STOP
       end
