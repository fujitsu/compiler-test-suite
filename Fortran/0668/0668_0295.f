      program main
      real*4    rsx(100)
      integer*4 isx(100),is1(100),isx2(100)
      data isx/100*1/,rsx/100*1./,isx2/100*12/
      write(6,*) '***** start *****'
      do 11 i=1,100
        is1(i)=  nint(real(2.**(dble(rsx(i)**(real(isx(i)**i)))))+
     +           real(10.**(2.**(
     +      mod(dble(2.**(10.**rsx(i))),dble(2.**(10.**rsx(i)))))))+
     +           real(mod(abs(sign(isx(i),-1)),
     +                           abs(sign(int(rsx(i)),-1)))))
 11   continue

      do 12 i=1,100
        if(is1(i).ne.isx2(i)) goto 111
 12   continue

      write(6,*) '***** no.1 => ok    *****'
      goto 1000
 111  write(6,*) '***** no.1 => ng    *****'
 1000 do 21 i=1,100
       if(mod(i,2).eq.0)
     +  is1(i)=  nint(real(2.**(dble(rsx(i)**(real(isx(i)**i)))))+
     +           real(10.**(2.**(
     +      mod(dble(2.**(10.**rsx(i))),dble(2.**(10.**rsx(i)))))))+
     +           real(mod(abs(sign(isx(i),-1)),
     +                           abs(sign(int(rsx(i)),-1)))))
       if(mod(i,2).ne.0)
     +  is1(i)=  nint(real(2.**(dble(rsx(i)**(real(isx(i)**i)))))+
     +           real(10.**(2.**(
     +      mod(dble(2.**(10.**rsx(i))),dble(2.**(10.**rsx(i)))))))+
     +           real(mod(abs(sign(isx(i),-1)),
     +                           abs(sign(int(rsx(i)),-1)))))
 21   continue

      do 22 i=1,100
        if(is1(i).ne.isx2(i)) goto 222
 22   continue

      write(6,*) '***** no.2 => ok    *****'
      goto 9999
 222  write(6,*) '***** no.2 => ng    *****'

 9999 write(6,*) '***** end   *****'
      stop
      end
