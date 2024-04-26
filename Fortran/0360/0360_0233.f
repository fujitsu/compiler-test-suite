      call r4()
      call r8()
      end

      subroutine r4
      INTEGER*4  I21(11,2)/22*0/
      REAL*4    R30/0/

      DO 2100 J=1,10
         DO 210 I=1,10
 210     I21(2,1) = 1
 2100 CONTINUE

      write(1,*) I21

      DO 3000 I=1,2
         DO 3100 J=1,8
            I30S = 3
            DO 300 I1=1,8
               R30S = 9
               R30 = R30 + 2
 300        continue
 3100    CONTINUE                                                        
 3000 CONTINUE                                                          

      if (r30.ne.256 ) goto 10
      write(6,*) ' ## ok ## '
      goto 20
 10   write(6,*) ' ## ng ## '
      WRITE(6,*) R30
 20   continue
      END                                                               

      subroutine r8
      INTEGER*4  I21(11,2)/22*0/
      REAL*8    R30/0/

      DO 2100 J=1,10
         DO 210 I=1,10
 210     I21(2,1) = 1
 2100 CONTINUE


      write(1,*) I21

      DO 3000 I=1,2
         DO 3100 J=1,8
            I30S = 3
            DO 300 I1=1,8
               R30S = 9
               R30 = R30 + 2
 300        continue
 3100    CONTINUE                                                        
 3000 CONTINUE                                                          

      if (r30.ne.256 ) goto 10
      write(6,*) ' ## ok ## '
      goto 20
 10   write(6,*) ' ## ng ## '
      WRITE(6,*) R30
 20   continue
      END                                                               

