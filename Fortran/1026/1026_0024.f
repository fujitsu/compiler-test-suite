      module  mm
      contains
      function   ss11(a1,ia1,ia2,ia3,ia4,ia5,ia6,addr) result(a3)
      integer  a1(ia1:ia2,ia3:ia4)
      integer  a2(ia1:ia2,ia3:ia4)
      integer  a3(ia1:ia2,ia3:ia4)
      integer  a4(ia1:ia2,ia3:ia4)
      pointer (addr,a4)
      end function
      end module
      end
