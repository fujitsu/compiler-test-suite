      character*4 a(3,3),data(3,3)
      pointer (idata,data)
      call set_c(a)
      idata = loc(a)

      data(3:1:-1,3:1:-1) = a

      if (a(1,2)/='6789')print *,'error',a(3,2)
      print *,'pass'
      end
      subroutine set_c(a)
      character*(*) a(3,*)
      a(1,1)='1234'
      a(2,1)='2345'
      a(3,1)='3456'
      a(1,2)='4567'
      a(2,2)='5678'
      a(3,2)='6789'
      a(1,3)='7890'
      a(2,3)='8901'
      a(3,3)='9012'
      end
