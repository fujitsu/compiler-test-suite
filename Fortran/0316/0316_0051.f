
      integer a(10)
      type tag
        integer a(10)
      end type
      type (tag) t
      integer,parameter::p(10)=(/10,9,8,7,6,5,4,3,2,1/)
      data a(p)   /10,9,8,7,6,5,4,3,2,1/
      data t%a(p) /10,9,8,7,6,5,4,3,2,1/

      do i=1,10
        if (a(i).ne.t%a(i)) then
          print *,'?? NG ??'
          stop
        endif
      enddo

      print *,'** OK **'
      end
