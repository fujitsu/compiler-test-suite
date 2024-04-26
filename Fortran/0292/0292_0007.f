      subroutine s(l)
      k=0
      do i=1,l
         j=10/i
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
         k= ((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j))*2
     &     /(abs(((k+i/j)+(k+i/j)+(k+i/j)+(k+i/j)))+1)
      enddo
      if ( 20.eq.k ) print *,'OK'
      print *,k
      end

      call s(10)
      end
