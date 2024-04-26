      program main
      integer*4 a(10),b(10),r(10)
      data a/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      data r/ 2, 2, 3, 4, 5, 6, 7, 8, 9,10/
      equivalence (k,l)
      k=6
      do i=1,10
        n=k+i-5
        l=5
        a(i)=a(n)
        b(i)=a(i)
      enddo
      do i=1,10
        if (a(i).ne.r(i).or.b(i).ne.r(i)) then
          write(6,*) 'ng'
          write(6,*) a
          goto 99
        endif
      enddo
      write(6,*) 'ok'
  99  continue
      stop
      end
