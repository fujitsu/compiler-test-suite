      call x()
      call aa()
      print *,' *** generate common error test ng ***'
      end
      module mod_aa
      integer(kind=4)  i1,i2
      integer(kind=8)  id
      real(kind=4)     r1,r2
      real(kind=8)     rd
      real(kind=16)    rq
      integer(kind=4)  i3,i4
      complex(kind=8)  cd
      complex(kind=16) cq
      common /comi/ i1,i2
      common /comr/ r1,r2
      common /comc/ i3,i4
      equivalence (i2,id)
      equivalence (r2,rd)
      equivalence (r2,rq)
      equivalence (i4,cd)
      equivalence (i4,cq)
      end
      subroutine x()
      integer(kind=4)  i1,i2
      integer(kind=8)  id
      real(kind=4)     r1,r2
      real(kind=8)     rd
      real(kind=16)    rq
      integer(kind=4)  i3,i4
      complex(kind=8)  cd
      complex(kind=16) cq
      common /comi/ i1,i2
      common /comr/ r1,r2
      common /comc/ i3,i4
      equivalence (i2,id)
      equivalence (r2,rd)
      equivalence (r2,rq)
      equivalence (i4,cd)
      equivalence (i4,cq)
      end
      subroutine aa()
      use mod_aa
      end
