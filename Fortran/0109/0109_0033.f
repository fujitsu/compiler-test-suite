
      integer*4   i04_a(10),i04_t(10),ifun
      real*4      r04_a(10),r04_t(10)
      logical*4   l04_a(10),l04_t(10)
      character*5 ch5_result/'ok !!'/
      data i04_a/ 1  , 2  , 3  , 4  , 5  , 6  , 7  , 8  , 9  ,10  /
      data r04_a/ 0.0, 1.0, 4.0, 9.0,16.0,25.0,36.0,49.0,64.0,81.0/
      data l04_a/.TRUE. ,.FALSE.,.TRUE. ,.FALSE.,.TRUE.
     !          ,.FALSE.,.TRUE. ,.FALSE.,.TRUE. ,.FALSE./
      data i04_t/46  , 2  ,48  , 4  ,50  , 6  ,52  , 8  ,54  ,10  /
      data r04_t/ 0.0, 1.0, 4.0, 9.0,16.0,25.0,36.0,49.0,64.0,81.0/
      data l04_t/.TRUE. ,.FALSE.,.TRUE. ,.FALSE.,.TRUE.
     !          ,.FALSE.,.TRUE. ,.FALSE.,.TRUE. ,.FALSE./
      where(l04_a) i04_a=i04_a+ifun(r04_a)
      do i=1,10
        if(i04_a(i) .ne.   i04_t(i) .or.
     !     r04_a(i) .ne.   r04_t(i) .or.
     !     l04_a(i) .neqv. l04_t(i)     ) ch5_result='ng ??'
      enddo
      write(6,*) '*** ',ch5_result,' ***'
      stop
      end

      integer function ifun(r04_a)
      real*4 r04_a(10)
      ifun=0
      do i=1,10
         ifun=ifun+sqrt(r04_a(i))
      enddo
      end
