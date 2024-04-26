
      integer i(2,2)
      data i(1,2:1:1),j /1/

      call check(j,1)
      print *,'** OK **'
      end

      subroutine check(i,ii)
      if (i.ne.ii) then
         print *,'?? NG ??'
         stop
      endif
      end
