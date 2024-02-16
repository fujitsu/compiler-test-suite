      INTEGER I,K,Q
      Q=0
      K=0
      goto 50
 30   continue
      if(K.eq.1)then
         Q=Q+1
      else
         Q=Q+2
      endif
      goto 10
 50   continue

      DO 10 I=0,10
         K=1-K
         goto 20
 10   continue

      goto 40
 20   continue
      if(K.eq.0)then
         Q=Q+3
      else
         Q=Q+4
      endif
      goto 30
 40   continue
      if((I.eq.11).and.(K.eq.1).and.(Q.eq.55))then
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
      goto 90
 70   continue

      DO 80 I=0,10
         K=1-K
         goto 60
 80   continue

      goto 100
 90   continue
      if(K.eq.0)then
         Q=Q+3
      else
         Q=Q+4
      endif
      goto 80
 100  continue
      if((I.eq.11).and.(K.eq.0).and.(Q.eq.110))then
         print *,'ok'
      else
         print *,'ng'
      endif

      END
