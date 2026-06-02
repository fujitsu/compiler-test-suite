
      common /com/b
      integer b(10)
      do i=1,10
        if (i.ne.b(i)) then
          print *,'?? NG ??'
          stop
        endif
      enddo
      print *,'** OK **'
      end

      block data bk
      common /com/a,b
      integer a(0:-1), b(10)
      data b /1,2,3,4,5,6,7,8,9,10/
      end
