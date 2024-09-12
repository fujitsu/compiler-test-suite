      dimension lm(2,10)
      data nd/10/,lm/1,2,3,4,5,6,7,8,9,10,9,8,7,6,5,4,3,2,1,0/
      data max/0/,min/0/
      do 800 l=1,nd
      if (lm(1,l).eq.0) go to 800
      if (lm(1,l).gt.max) max=lm(1,l)
      if (lm(1,l).lt.min) min=lm(1,l)
  800 continue
      write(6,*) max,min
      stop
      end
