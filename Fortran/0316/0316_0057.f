
      integer*8,parameter ::i=1000000000,k=100000000000
      integer*8           ::j
      integer a(1)
      data (a((i*j)/k),j=100,100) /1/
      call check(a(1),1)
      print *,'** OK **'
      end

      subroutine check(i,ii)
      if (i.ne.ii) then
         print *,'?? NG ??'
         stop
      endif
      end
