      INTEGER I,K,Q,B
      Q=0
      K=0
      DO 10 I=0,10
         K=1-K
         goto 20
 10   continue
      goto 40
 20   continue
      if(K.eq.1)then
         Q=Q+1
      else
         Q=Q+2
      endif
      DO 100 B=0,12
         Q=Q+3
 100  continue
      goto 10
 40   continue
      if((I.eq.11).and.(K.eq.1).and.(Q.eq.445))then
         print *,'ok'
      else
         print *,'ng'
      endif

      goto 70
 60   continue
      if(K.eq.1)then
         Q=Q+1
      else
         Q=Q+2
      endif
      DO 110 B=0,12
         Q=Q+3
 110  continue
      goto 50
 70   continue
      VVV:DO 50 I=0,10
      K=1-K
      goto 60
 50   END DO VVV
      if((I.eq.11).and.(K.eq.0).and.(Q.eq.891))then
         print *,'ok'
      else
         print *,'ng'
      endif
      end
