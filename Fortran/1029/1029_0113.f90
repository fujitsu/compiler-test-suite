      n=0
      i1=0;i2=0;i3=3
      k1=1;k2=2;k3=3

      do i=1,2
        if ( .not.(i1.eq.k1.or.i2.eq.k2).and.(i3.eq.k3) ) then
          n=n+1
          if (.not.(.not.(i1.eq.k1.or.i2.eq.k2).and.(i3.eq.k3).and. n.eq.i) ) &
          write(6,*) "NG"
        endif
      enddo

      if (n/=2) write(6,*) "NG"
      print *,'pass'

      end
