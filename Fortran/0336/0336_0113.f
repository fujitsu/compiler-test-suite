      subroutine s(ia,isum,N)
      dimension ia(21)
      i=1
      do j=3,N,2
        i=i+2
        isum = isum + ia(i-2)
        ia(i) = isum+2 
      enddo
      return
      end
      dimension ima(21)
      do i=1,21
        ima(i) = i
      enddo
      imsum = 0
      call s(ima, imsum, 18)
      if ( imsum.ne.382 ) then
        print *,"NG"
      else
        print *,"OK"
      endif
      end
