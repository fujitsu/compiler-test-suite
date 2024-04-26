      logical(kind=4),parameter::T=.TRUE.,F=.FALSE.
      integer(kind=4)::i04a(10),i04t(10)
      logical(kind=4)::L04m(10)
      integer(kind=4)::check,error=0
      data i04t/1,2,1,2,1,2,1,2,1,2/
      data L04m/T,F,T,F,T,F,T,F,T,F/
      
      where(L04m)
        i04a=1
      elsewhere
        i04a=2
      endwhere

      error=error+check(i04a,i04t)
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
         if(i04x(i).ne.i04y(i)) then
            res=res+1
         endif
      enddo
      end


