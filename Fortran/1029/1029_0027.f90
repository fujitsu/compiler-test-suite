      i1=1;i2=2;i3=2
      k1=1;k2=2;k3=-3

     if ( (i1+i2.eq.i3 .or. -(k1+k2).eq.k3)) then
       n=1
     else
       write(6,*) "NG"
     endif

      i1=1;i2=2;i3=2
      k1=1;k2=2;k3=-1

     if ( (i1+i2.eq.i3 .or. -(-k1+k2).eq.k3)) then
       n=1
     else
       write(6,*) "NG"
     endif

     print *,'pass'

     end
