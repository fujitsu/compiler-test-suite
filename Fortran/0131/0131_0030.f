      program nrgl19
      dimension a(5),xr(5),xi(5),b(5),c(5)
      data a/1,-8,39,-62,50/
      n=4
      eps=1.e-7
      p=1.0
      q=1.0
      nn=n+1
      m=0
   10 j=n-2*m
      m=m+1
      jj=j+1
      if( j-2 ) 20,25,30
   20 xr(n)=-a(2)/a(1)
      xi(n)=0
      goto 60
   25 aa=a(1)
      bb=a(2)
      cc=a(3)
      goto 51
   30 nl=1
   35 b(1)=a(1)
      b(2)=a(2)-p*b(1)
      do 36 i=3,jj
   36 b(i)=a(i)-p*b(i-1)-q*b(i-2)
      c(1)=b(1)
      c(2)=b(2)-p*c(1)
      do 37 i=3,j
   37 c(i)=b(i)-p*c(i-1)-q*c(i-2)
      cx=c(j)-b(j)
      cy=c(j-1)**2-cx*c(j-2)
      dp=(b(j)*c(j-1)-b(jj)*c(j-2))/cy
      dq=(b(jj)*c(j-1)-b(j)*cx)/cy
      p=p+dp
      q=q+dq
      if( abs(dp).gt.eps ) goto 40
      if( abs(dq).lt.eps ) goto 45
   40 if( nl.ge.100 ) goto 45
      nl=nl+1
      goto 35
   45 do 50 i=1,jj
   50 a(i)=b(i)
      aa=1.
      bb=p
      cc=q
   51 d=bb*bb-4.*aa*cc
      if( d.ge.0 ) goto 52
      x1j=-bb/(2.*aa)
      x2j=x1j
      x1k=sqrt(-d)/(2.*aa)
      x2k=-x1k
      goto 55
   52 dd=sqrt(d)
      x1j=(-bb+dd)/(2.*aa)
      x2j=(-bb-dd)/(2.*aa)
      x1k=0.
      x2k=0.
   55 xr(2*m-1)=x1j
      xr(2*m)=x2j
      xi(2*m-1)=x1k
      xi(2*m)=x2k
      if( j.gt.2 ) goto 10
   60 continue
      sum=0.0
      do 65 i=1,n
        sum=xr(i)+xi(i)+sum
   65 continue
      if( abs(sum-8.0000000) .le. 0.00001  ) then
        write( 6,* ) ' ok '
      else
        write( 6,* ) ' ng '
      endif
      stop
      end
