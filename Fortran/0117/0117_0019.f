      integer a4(10)/10*3/,b4(10)/10*5/,c4(10)/10*2/,d4(10)
      integer x4,y4,z4
      do 10 i=1,10
         x4=a4(i)
         y4=-x4
         z4=c4(i)
         x4=b4(i)
         d4(i)=y4+x4+z4
 10      continue
      write(6,*) d4
      end
