
      integer*4   i04_a(10),i04_b(10),i04_t(10),i04_m(10)
      real*4      r04_a(10),r04_t(10)
      character*5 ch5_result/'ok   '/
      data i04_a/1,2,3,4,5,6,7,8, 9,10/
      data i04_b/1,0,1,0,1,0,1,0, 1, 0/
      data r04_a/10*0.0/
      data i04_t/2,2,4,4,6,6,8,8,10,10/
      data i04_m/1,0,1,0,1,0,1,0, 1, 0/
      data r04_t/10*0.0/
      where(i04_b .eq. int(cos(r04_a))) i04_a=i04_a+1
      do i=1,10
        if(i04_a(i) .ne. i04_t(i) .or.
     +     i04_b(i) .ne. i04_m(i) .or.
     +     r04_a(i) .ne. r04_t(i)     ) ch5_result='ng ??'
      enddo
      write(6,*) '*** ',ch5_result,' ***'
      stop
      end

