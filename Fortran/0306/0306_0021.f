      REAL*8 C(10)/10*1.0/
      REAL*8 P(10),Q(10)
      real*8 res1,res2
      p=0
      res1=abs(cos(1.0))
      res2=abs(log(sin(1.0)))

      DO k=1,10
         P(k)=COS(C(k))
         Q(k)=LOG(SIN(C(k)))
      ENDDO

      if (abs(abs(q(1))-res2) .gt. 0.00005) then
         WRITE(6,*) "test2 NG "
         WRITE(6,*) q(1)
      endif
      if (abs(abs(p(1))-res1) .gt. 0.00005) then
         WRITE(6,*) "test2 NG "
         WRITE(6,*) p(1)
      endif

      DO k=1,10
         P(k)=COS(C(k))
         Q(k)=LOG(SIN(C(k)))
      ENDDO

      if (abs(abs(q(1))-res2) .gt. 0.00005) then
         WRITE(6,*) "test1 NG "
         WRITE(6,*) q(1)
      endif

      WRITE(6,*) "2570 OK"
      END
