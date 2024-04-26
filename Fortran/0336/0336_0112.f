      subroutine s(ia,isum)
      dimension ia(20)
      i=0
00001 i=i+1
      if ( isum.eq.9 ) then
         isum = isum + 20
      endif
      isum = ia(i)+isum
      if ( isum.eq.8 ) then
         ia(i+1) = isum + 20
      endif
      ia(i+1) = isum+2             
      if ( i.lt.9 ) goto 1
00010 return
      end
      dimension ima(20)
      do i=1,20
        ima(i) = i
      enddo
      imsum = 0
      call s(ima, imsum)
      if ( imsum.ne.766 ) then
        print *,"NG"
      else
        print *,"OK"
      endif
      end
