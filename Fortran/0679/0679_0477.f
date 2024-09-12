      program main
      real*4    ra(10),rb(10),rc(10)
      logical*4 m(10)/5*.true.,5*.false./
      complex*8 cea(10)/5*(1.,1.),5*(2.,2.)/
      integer*4 l(10)/1,3,5,7,2,4,6,9,8,10/
      data      ra/1,2,3,4,5,6,7,8,9,10/,rb/10*1.5/,rc/10*2./
      data      n/10/

      do 10 i=1,n
       if (m(i)) then
         ra(i)=ra(i)+i+sin(ra(i))+cos(rb(i))
         rb(i)=rb(i)+3
         rc(l(i))=ra(i)+rb(i)
         cea(i)=cmplx(ra(i),rb(i))
        endif
 10   continue
      write(6,*) 'ra=',ra,'rb=',rb,'rc=',rc,'cea=',cea
      stop
      end
