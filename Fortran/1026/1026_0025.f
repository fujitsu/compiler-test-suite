      module mx
      common /xxz/ ia1,ka2,ma3,na4,la5,ia6
      equivalence( ia1,ka1,ma1,na1,la1)
      equivalence( ia2,ka2,ma2,na2,la2)
      equivalence( ia3,ka3,ma3,na3,la3)
      equivalence( ia4,ka4,ma4,na4,la4)
      equivalence( ia5,ka5,ma5,na5,la5)
      equivalence( ia6,ka6,ma6,na6,la6)
      end
      module  mm
      contains
      subroutine tt2
      use mx
      parameter(ja1=-4,ja2=-3,ja3=-2,ja4=-1)
      character  a1(ja1:ja2,ja3:ja4)
      character  a4(ja1:ja2,ja3:ja4)
      integer addr
      contains
      function   ss12(a1                        ,addr) result(a3)
      use mx
      character(ia6)  a1(ia1:ia2,ia3:ka4)
      character(ia6)  a2(ma1:ia2,ma3:ia4)
      character(ia6)  a3(ka1:ka2,ia3:ia4)
      character(ia6)  a4(na1:ia2,ia3:na4)
      pointer (addr,a4)
      end function
      end subroutine
      end module
      end
