      program main
      integer*4 sum
      data sum/0/
      data n/10/
      kk=3
      do 50 iii=1,n
      ii=1
  100 continue
      ii=ii+1
      jj=2**(ii-1)
      rl=ii*4
      ll=log(rl)
      if(kk.ne.3) then
        x=jj-(ii+10)**2/kk+ll

        sum=sum+1
        if(x.lt.0.0) go to 200
        y=sqrt(x)
        if(ii.eq.5) go to 150
      endif
      kk=10-jj

      if(ii.gt.n) go to 50
      if(ii.le.n) go to 100
      ii=0
  200 continue
      ii=ii+1
      jj=2**(ii-1)
      rl=ii*4
      ll=log(rl)
      x=ii**2/kk-jj+ll

      sum=sum+1
      kk=10-jj
      if(x.lt.0) go to 100
      y=sqrt(x)
      if(ii.eq.5) go to 150

      if(ii.gt.n) go to 50
      if(ii.le.n) go to 200
  150 ii=ii+1
      is=mod(ii,2)+1


      go to (100,200) is
   50 continue
      if(sum.eq.99) then
        write(6,*) '*** ok ***'
      else
        write(6,*) '*** ng ***'
        write(6,*) sum
      endif
      end
