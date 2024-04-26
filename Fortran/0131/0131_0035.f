      integer n,tn
      double precision    x,t1,t2,mean,s,sd,tmean,tsd
      data tn   /10/
      data tmean/5500.50000/
      data tsd  /3027.65035/
*
      read(5,100) n
  100 format(i4)
*
      t1=0.0
      t2=0.0
      i=0
*
   10 i=i+1
      read(5,110) x
  110 format(f10.4)
      t1=t1+x
      t2=t2+x*x
      if(i.lt.n) goto 10
*
      mean=t1/float(n)
      s=t2-t1*mean
      sd=sqrt(s/(float(n)-1.0))
*
      write(6,*)' '
      if(abs(tn-n).ne.0) goto 999
      if(abs(tmean-mean).gt.1.0d-4) goto 999
      if(abs(tsd  -sd  ).gt.1.0d-4) goto 999
      write(6,*)'*****  ok - ok - ok   *****'
      goto 1000
  999 write(6,*)'?????  ng - ng - ng   ?????'
 1000 write(6,*)' '
      stop
      end
