      dimension     g(10,10),v(10,10),w(10)
      data nvec/10/,j/5/,n/10/,nv/5/,w/10*5./,v/100*0./x/1/
      data g/100*1./
      do  800  nv=1,nvec
        niter=0
  620   niter=niter+1
        if ( niter.ge.2 )            go to 760
        go to 620
  730   l=j
        do  750  i=l,n
  750     w(i)=w(i)-x*g(i,j)
        j = j - 1
  760   if ( j.gt.1 )                go to 730
        do  800  i=1,n
          v(i,nv)=w(i)
  800   continue
      write(6,*) w,v
      stop
      end
