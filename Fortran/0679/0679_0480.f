      program main
      real*4    ra(10),rb(10),rc(10),rd(10)
      logical*4 m(10)/5*.true.,5*.false./
      logical*4 l4a(10)/5*.true.,5*.false./
      logical*4 l4b(10)/3*.true.,2*.false.,5*.false./
      integer*4 l(10)/2,4,6,8,10,1,3,5,7,9/
      complex*8 cea(10)/10*(0.,0.)/
      data      ra/1,2,3,4,5,6,7,8,9,10/,rb/10*1.5/,rc/10*0./
      data      n/10/sm/0./,rd/10*1./

      do 10 i=1,n
       if (m(i)) then
         ra(i)=ra(i)+i+sin(ra(i))+cos(rb(i))
         rb(i)=rb(i)+3
         l4a(i)=l4a(i).neqv.l4b(i)
         cea(i)=cmplx(ra(i),rb(i))+(1.,1.)*rb(i)
         rc(l(i))=ra(i)+rb(i)
         rd(l(i))=rd(l(i))+ra(i)
        endif
 10   continue
      write(6,*) 'ra=',ra,'rb=',rb,'cea=',cea
      write(6,*) 'l4a=',l4a,'rc=',rc,'rd=',rd
      stop
      end
