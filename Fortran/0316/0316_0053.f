
      integer a(10,10)
      type tag
        integer a(10,10)
      end type
      type (tag) t
      integer,parameter::p(10)=(/1,2,3,4,5,6,7,8,9,10/)
      data a(p,p)   /10*1,10*2,10*3,10*4,10*5,10*6,10*7,10*8,10*9,10*10/
      data t%a(p,p) /10*1,10*2,10*3,10*4,10*5,10*6,10*7,10*8,10*9,10*10/

      do i=1,10
        do j=1,10
          if (a(i,j).ne.j) then
            print *,'?? NG ??'
            stop 1
          endif
        enddo
      enddo

      do i=1,10
        do j=1,10
          if (t%a(i,j).ne.j) then
            print *,'?? NG ??'
            stop 1
          endif
        enddo
      enddo

      print *,'** OK **'
      end
