      program main
      real ra(100)/100*0./,rb(100)/25*1.,25*2.,25*3.,25*4./
      real rc(100)/100*1.5/
      integer l(10)/1,2,3,4,5,6,7,8,9,10/
      data    j/6/

      do 10 i=1,10
        n1 = i*4
        n2 = i*4
        ra(n1) = rb(n2) + rc(l(i))
 10   continue
      write(6,*) ra
      do 20 i=1,10
        n = i*4
        if(j.gt.5) n = i*8
        ra(n) = rb(l(i))
 20   continue
      write(6,*) ra
      stop
      end
