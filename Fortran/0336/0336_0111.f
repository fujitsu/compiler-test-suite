      subroutine s(ia,isum)
      dimension ia(10)
      i=1
00010 if ( i.eq.10 ) goto 20
      i=i+1
      isum = isum + ia(i-1)
      ia(i) = isum+2 
      goto 10
00020 return
      end
      dimension ima(10)
      do i=1,10
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
