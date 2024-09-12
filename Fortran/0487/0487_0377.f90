      call s
      print *,'pass'
      end
      subroutine set_x3(x)
      structure /x3/
        complex x31
        complex x32(5)
        character*4 x33
        character*4 x34(5)
      end structure
      record /x3/ x
      x.x31 = (1,1)
      do 1 i=1,5
       x.x31=x.x31+(1,1)
       x.x32(i)=x.x31
  1   continue
      end
      subroutine err(i1,i2)
      print *,'error code :',i1,i2
      end
      subroutine s
      structure /x3/
        complex x31
        complex x32(5)
        character*4 x33
        character*4 x34(5)
      end structure
      structure /x2/
        record /x3/ x21
        record /x3/ x22(5)
      end structure
      record /x2/ x11
      call set_x3(x11.x21)
      do 101 i=1,5
         call set_x3(x11.x22(i))
 101  continue
      end
