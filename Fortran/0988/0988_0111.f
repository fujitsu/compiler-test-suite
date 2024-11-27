      subroutine s(l)
      k=0
      do while ( i.lt.l )
         j=24/l
         k=k+i/j
         i=i+1
      enddo
      if ( 20.eq.k ) print *,'OK'
      print *,k
      end
      call s(10)
      end
