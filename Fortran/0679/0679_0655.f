      program main
      real*4 ra(10),rb(10),s(10)
      logical ls(10) , lb(10)
      data ra/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data rb/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./
      data s/10*0./
      data ls/10*.true./

      do 10 i=1,10
        s(1)=ra(i)
        rb(i)=s(2)+ra(i)
        s(3)=rb(i)
  10  continue
        s(4) = s(1) + s(2) + s(3)

      do 20 i=1,10
        ls(1)=ra(i).eq.i
        lb(i)=ls(2)
        ls(3)=.not. lb(i)
  20  continue
        ls(4) = ls(1).and. ls(2).and. ls(3)
      write(6,*) '** real data  ***'
      write(6,*) 's(1)=10., s(2)=0. ,s(3)=10., s(4)=20. ,'
      write(6,*) s(1) ,s(2) , s(3) , s(4)
      write(6,*) '** logical data ****'
      write(6,*) 'ls(1)=t  , ls(2)=t  , ls(3)=f   ,ls(4)=f    '
      write(6,*) ls(1) , ls(2) , ls(3) , ls(4)
      stop
      end
