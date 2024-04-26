      logical(kind=4),parameter::T=.TRUE.,F=.FALSE.
      integer(kind=4)::i04a(10),i04b(10),i04t(10)
      logical(kind=4)::L04m(10)
      integer(kind=4)::check,error=0
      data i04b/0,1,2,3,4,5,6,7,8,9/
      data i04t/1,3,3,5,5,7,7,9,9,11/
      data L04m/F,T,F,T,F,T,F,T,F,T/
      
      call init(i,j)
      i04a=i04b
      where(L04m.neqv.T)
        i04a(i:)=i04a(i:)+1
      elsewhere
        i04a(j:)=i04a(j:)+2
      endwhere

      error=error+check(i04a,i04t)
      if(error/=0) then
         write(6,*) '*** ng ?? ***'
         write(6,*) 'error count: ',error
         print *,i04a
         print *,i04t
      else
         write(6,*) '*** ok    ***'
      endif
      stop
      end

      subroutine init(i,j)
      integer(kind=4)::i,j
      integer(kind=4),save::k=0
      k=k+1
      i=k
      j=int(cos(0.0))*1
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


