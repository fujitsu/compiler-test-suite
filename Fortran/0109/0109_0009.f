
      integer*4   i04_a(10),i04_b(10),i04_t(10),i04_m(10)
      character*5 ch5_result/'ok   '/
      data i04_a/10*0/
      data i04_b/1,0,1,0,1,0,1,0,1,0/
      data i04_t/1,0,1,0,1,0,1,0,1,0/
      data i04_m/1,0,1,0,1,0,1,0,1,0/
      where(i04_b .eq. 1) i04_a=1
      do i=1,10
        if(i04_a(i) .ne. i04_t(i) .or.
     +     i04_b(i) .ne. i04_m(i)     ) ch5_result='ng ??'
      enddo
      write(6,*) '*** ',ch5_result,' ***'
      stop
      end

