      program main
*
      sum=0.0
      a0=0.1
      a1=-0.5
      a2=0.8
      a3=1.4
*
      a=a1/a0
      b=a2/a0
      c=a3/a0
      aa=-0.5/0.1
      bb=0.8/0.1
      cc=1.4/0.1
      if((abs(a - aa) .lt. 0.00001) .and.
     +   (abs(b - bb) .lt. 0.00001) .and.
     +   (abs(c - cc) .lt. 0.00001)) then
        write(6,*) '** ok **'
      else
        write(6,*) '** ng **'
      endif
      stop
      end
