
      integer*4   i04_a(10),i04_t(10)
      logical*4   l04_a(10),l04_t(10)
      character*5 ch5_result/'ok   '/
      data i04_a/1,2,3,4,5,6,7, 8, 9,10/
      data i04_t/2,4,4,6,6,8,8,10,10,12/
      data l04_a/.TRUE. ,.FALSE.,.TRUE. ,.FALSE.,.TRUE.
     +          ,.FALSE.,.TRUE. ,.FALSE.,.TRUE. ,.FALSE./
      data l04_t/.TRUE. ,.FALSE.,.TRUE. ,.FALSE.,.TRUE.
     +          ,.FALSE.,.TRUE. ,.FALSE.,.TRUE. ,.FALSE./
      where(l04_a)
        i04_a=i04_a+1
      elsewhere
        i04_a=i04_a+2
      endwhere
      do i=1,10
        if(i04_a(i) .ne.   i04_t(i) .or.
     +     l04_a(i) .neqv. l04_t(i)     ) ch5_result='ng ??'
      enddo
      write(6,*) '*** ',ch5_result,' ***'
      stop
      end

