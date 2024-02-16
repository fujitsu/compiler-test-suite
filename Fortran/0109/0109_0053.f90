      integer a(10),b(10),c(10),check
      data a/1,0,1,0,1,0,1,0,1,0/
      data b/1,2,3,4,5,6,7,8,9,10/
      data c/1,3,5,7,9,2,4,6,8,10/

      where(a .gt. 0)
        b=b+1
        c=c+1
      elsewhere
        b=b-2
        c=c-2
      endwhere
      
      if(check(b,c) .eq.0) then
         write(6,*) '*** ok !! ***'
      else
         write(6,*) '*** ng ?? ***'
      endif
      stop
      end

      integer function check(b,c) result(res)
      integer b(10),c(10),tb(10),tc(10)
      data tb/ 2, 0, 4, 2, 6, 4, 8, 6,10, 8/
      data tc/ 2, 1, 6, 5,10, 0, 5, 4, 9, 8/

      res=0
      do i=1,10
         if(b(i) /= tb(i) .or. c(i) /= tc(i)) res=1
      enddo
      if(res/=0) then
         write(6,*) 'true value(b): ',tb
         write(6,*) 'calc value(b): ', b
         write(6,*) 'true value(c): ',tc
         write(6,*) 'calc value(c): ', c
      endif
      end   
