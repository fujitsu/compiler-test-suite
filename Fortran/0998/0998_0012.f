      call y()
      call z()
      call bb()
      call cc()
      print *,' *** generate common error test ng ***'
      end
      module mod_bb
      integer(kind=1)  i1,i2
      integer(kind=8)  id
      integer(kind=1)  i5,i6
      real(kind=8)     rd
      real(kind=16)    rq
      integer(kind=1)  i3,i4
      complex(kind=8)  cd
      complex(kind=16) cq
      common /comi/ i1,i2
      common /comr/ i5,i6
      common /comc/ i3,i4
      equivalence (i2,id)
      equivalence (i6,rd)
      equivalence (i6,rq)
      equivalence (i4,cd)
      equivalence (i4,cq)
      end
      module mod_cc
      integer(kind=2)  i1,i2
      integer(kind=8)  id
      integer(kind=2)  i5,i6
      real(kind=8)     rd
      real(kind=16)    rq
      integer(kind=2)  i3,i4
      complex(kind=8)  cd
      complex(kind=16) cq
      common /comi/ i1,i2
      common /comr/ i5,i6
      common /comc/ i3,i4
      equivalence (i2,id)
      equivalence (i6,rd)
      equivalence (i6,rq)
      equivalence (i4,cd)
      equivalence (i4,cq)
      end
      subroutine y()
      integer(kind=1)  i1,i2
      integer(kind=8)  id
      integer(kind=1)  i5,i6
      real(kind=8)     rd
      real(kind=16)    rq
      integer(kind=1)  i3,i4
      complex(kind=8)  cd
      complex(kind=16) cq
      common /comi/ i1,i2
      common /comr/ i5,i6
      common /comc/ i3,i4
      equivalence (i2,id)
      equivalence (i6,rd)
      equivalence (i6,rq)
      equivalence (i4,cd)
      equivalence (i4,cq)
      end
      subroutine z()
      integer(kind=2)  i1,i2
      integer(kind=8)  id
      integer(kind=2)  i5,i6
      real(kind=8)     rd
      real(kind=16)    rq
      integer(kind=2)  i3,i4
      complex(kind=8)  cd
      complex(kind=16) cq
      common /comi/ i1,i2
      common /comr/ i5,i6
      common /comc/ i3,i4
      equivalence (i2,id)
      equivalence (i6,rd)
      equivalence (i6,rq)
      equivalence (i4,cd)
      equivalence (i4,cq)
      end
      subroutine bb()
      use mod_bb
      end
      subroutine cc()
      use mod_cc
      end
