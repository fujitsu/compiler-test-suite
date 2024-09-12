      program main
      real*4     ra(10),rb(10),rc(10),rd(10)
      integer    ia(10),ib(10)
      logical    la(10)/.true.,.false.,.true.,.false.,.true.,
     1                  .false.,.true.,.false.,.true.,.false./
      data ra/10*0./,ia/10*0/
      data rb/1,2,3,4,5,6,7,8,9,10/,rc/-9,-8,-6,-3,2,5,7.7,2,1,1.1/
      data ib/1,2,3,4,5,6,7,8,9,10/
      rd = 0

      do 10 i=1,10
        if(la(i)) go to 10
        ia(i) = ib(3) / 2
        ra(i) = rb(4) / rc(7)
        rd(i) = amod( rb(3),rc(7))
  10  continue
      write(6,*) ia
      write(6,*) ra
      write(6,*) rd

      do 20 i=1,10
        if(la(i)) ia(i) = i / 2
  20  continue
      write(6,*) ia

      do 30 i=1,10
        if(.not.la(i)) go to 30
        ia(i) = ib(i) / 2
        ra(i) = rb(i) / rc(7)
        rd(i) = amod( rb(3),rc(7))
  30  continue
      write(6,*) ia
      write(6,*) ra
      write(6,*) rd
      stop
      end
