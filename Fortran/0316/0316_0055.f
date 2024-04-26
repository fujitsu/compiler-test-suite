      integer,parameter ::i8a=5,i8b=5
      integer a(10)
      data a /i8a*1,i8b*1/
      do i=1,10
        call check(a(i),1)
      enddo
      print *,'** OK **'
      end

      subroutine check(i,ii)
      if (i.ne.ii) then
         print *,'?? NG ??'
         stop
      endif
      end
