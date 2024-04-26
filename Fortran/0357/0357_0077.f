      program main
      real*8 a(2,2,2),b(2,2,2),result
*
      a(1,1,1)=1.0
      a(2,1,1)=2.0
      a(1,2,1)=3.0
      a(2,2,1)=4.0
      a(1,1,2)=5.0
      a(2,1,2)=6.0
      a(1,2,2)=7.0
      a(2,2,2)=8.0
*
      do 100 j=1,2
        do 100 k=1,2
          b(j,2:1:-1,k)=a(j,1:2:1,k)
  100 continue
*
      if (b(1,2,1).eq.1.0.and.
     -    b(2,2,1).eq.2.0.and.
     -    b(1,1,1).eq.3.0.and.
     -    b(2,1,1).eq.4.0.and.
     -    b(1,2,2).eq.5.0.and.
     -    b(2,2,2).eq.6.0.and.
     -    b(1,1,2).eq.7.0.and.
     -    b(2,1,2).eq.8.0) then
        write(6,*) 'ok'
      else
        write(6,*) 'ng',b
      endif
      end program main
