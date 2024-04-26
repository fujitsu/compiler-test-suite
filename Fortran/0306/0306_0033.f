      program main
      parameter(N=10)
      LOGICAL L10(N)
      INTEGER I10(N)
      REAL    R10(N),R11(N)
      data L10/5*.TRUE.,5*.FALSE./
      do i=1,n
       I10(i) = i
       R10(i) = i
       R11(i) = i
      enddo 
      call SUB3(N,L10,I10,R10,R11)
      stop
      end
      SUBROUTINE SUB3(N,L10,I10,R10,R11)
      LOGICAL L10(N),LRC
      INTEGER I10(N)
      REAL    R10(N),R11(N)
      DATA    LRC/.TRUE./,ICON/1/

      J=0
      K=0
      DO 10 I=1,N
        IF(L10(I)) THEN
 11       CONTINUE
          IF(LRC) THEN
 13         J = J + ICON
 14         I10(I) = R10(J)*I
          ELSE
 15         K = K + ICON
 16         R11(I) = FLOAT(K)
          ENDIF
        ENDIF
  10  CONTINUE
      WRITE(6,*) ' K  = ',K
      WRITE(6,*) ' J  = ',J
      write(6,*) R11
      write(6,*) I10

      RETURN
      END
