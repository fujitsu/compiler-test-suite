      n=0
      i1=1;i2=2;i3=3
      k1=1;k2=2;k3=3

      do i=1,2
        if ( (i1.eq.k1.and.i2.eq.k2).or..not.(i3.eq.k3) ) then
          n=n+1
        endif
      enddo

      do i=1,2
        if ( .not.(i1.ne.k1.or.i2.ne.k2).or..not.(i3.eq.k3) ) then
          n=n+1
        endif
      enddo

      do 100 i=1,2
      if ( (i1.eq.k1.and.i2.eq.k2).or..not.(i3.eq.k3) ) goto 100
      write(6,*) "NG"
  100 continue

      do 200 i=1,2
      if ( .not.(i1.ne.k1.or.i2.ne.k2).or..not.(i3.eq.k3) ) goto 200
      write(6,*) "NG"
  200 continue

      if (n/=4) write(6,*) "NG"
      print *,'pass'

      end
