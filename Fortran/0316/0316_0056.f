      integer*8 i,j
      integer a(10,10)
      data ((a(i,j),i=1,10),j=1,10) /100*1/
      do i=1,10
      do j=1,10
        call check(a(i,j),1)
      enddo
      enddo
      print *,'** OK **'
      end

      subroutine check(i,ii)
      if (i.ne.ii) then
         print *,'?? NG ??'
         stop
      endif
      end
