      structure /x/
         integer x(2,2)
      end structure
      record /x/ y(2:2),t(1)
      integer error/0/
      data ((t(1).x(i,j),i=1,2),j=1,2)/4,3,2,1/

      y.x(1,1)=1
      y.x(2,1)=2
      y.x(1,2)=3
      y.x(2,2)=4

      y(2).x(2:1:-1,2:1:-1) = y(2).x(1:2,1:2)

      do j=1,2
        do i=1,2
          if(y(2).x(i,j) .ne. t(1).x(i,j)) error=error+1
        end do
      end do
      if(error .eq. 0) then
        write(6,*) '*** ok ***'
      else
        write(6,*) '*** ng ***'
        write(6,*) 'true value=',t
        write(6,*) 'calc value=',y
      endif
      end

