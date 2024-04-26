      integer(kind=4)::check,error=0
      integer(kind=4)::i04a(10),i04b(10),i04t(10)
      data i04t/2,1,4,3,6,5,8,7,10,9/

      i04b=(/(mod(i,2),i=1,10)/)
      i04a=(/(i,i=1,10)/)
      where(i04b/=0)
        i04a=i04a+1
      elsewhere
        i04a=i04a-1
      endwhere

      error=check(i04a,i04t)
      if(error/=0) then
         write(6,*) '*** ng ?? ***'
         write(6,*) 'error count: ',error
      else
         write(6,*) '*** ok    ***'
      endif
      stop
      end

      integer(kind=4) function check(i04x,i04y) result(res)
      integer(kind=4)::i04x(10),i04y(10)
      res=0
      do i=1,10
         if(i04x(i)/=i04y(i)) then
            res=res+1
         endif
      enddo
      if(res/=0) then
         write(6,*) 'true value: ',i04y
         write(6,*) 'calc value: ',i04x
      endif
      end
