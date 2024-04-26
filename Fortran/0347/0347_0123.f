      dimension  na(10),la(20),a(10,10),b(10,10)
      data  a,b/50*1.,50*5.,50*10.,50*22./
      data  n/9/,ldxc/1/,ldyc/2/
      do 10 i=1,10
        na(i) = i
        if ( i.gt.5 ) na(i) = 11-i
        la(i) = 11-i
 10   continue
      do 20 j=2,n
        do 20 i=2,n
          iz = na(ldxc+i-1)+na(ldyc+j-1)
          ic = la(iz)
          a(j,i) = a(j,i) + b(j,ic)
  20   continue
       write(6,*) ' a = ',a
       stop
       end
