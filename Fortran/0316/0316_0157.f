
      integer*1,parameter ::i1a(10,10)=z'61'
      
      character*1,parameter ::ch1(10,10)=char(i1a)

      do i=1,10
        do j=1,10
          call check(ch1(j,i),char(i1a(j,i)))
        enddo
      enddo
      print *,'*** ok ***'
      end

      subroutine check(ch,cht)
      character*1 ch,cht
      if (ch.ne.cht) then
        print *,'??? ng ???'
        stop 1
      endif
      end
