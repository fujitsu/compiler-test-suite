      character x*2,y*2
      x(1:1) = char(255)
      x(2:2) = char(2)
      y(1:1) = char(2)
      y(2:2) = char(2)
      if(x.le.y) then
         write(6,*) 'LE'
      else
         write(6,*) 'GT'
      endif
      end
