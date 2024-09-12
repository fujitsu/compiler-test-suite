      dimension b(10),c(10)
      real*8  q(10)
      data q/10*0.0/,b/1,4,9,16,25,36,49,64,81,100/
      data           c/1,2,3,4,5,6,7,8,9,10/
      do 50 i1=1,10
        do 40 i2=1,10
          do 30 i3=1,10
            do 20 i4=1,10
              do 10 i5=1,10
                q(i5) = sqrt(b(i5)) + c(i5)
  10          continue
  20        continue
  30      continue
  40    continue
  50  continue
      write(6,*) q,' i5 = ',i5
      stop
      end
