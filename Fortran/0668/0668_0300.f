      program main
      real*8 a(10),b(10)
      data      a/10*0/
      data      b/10*16/
      write(6,*) '***** start *****'
      do 10 i=1,10
  10    if(i.gt.5) a(i) = sqrt(b(i))
      print *,a
      write(6,*) '***** end   *****'
      stop
      end
