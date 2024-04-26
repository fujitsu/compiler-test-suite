      logical(kind=4),parameter::T=.TRUE.,F=.FALSE.
      integer(kind=4)::i04a(10),i04b(10),i04ta(10),i04tb(10)
      logical(kind=4)::L04m(10)
      integer(kind=4)::check,error=0
      data i04a / 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      data i04b / 1, 3, 5, 7, 9,11,14,15,17,19/
      data i04ta/ 2, 2, 4, 4, 6, 6, 8, 8,10,10/
      data i04tb/ 1, 1, 5, 3, 9, 5,14, 7,17, 9/
      data L04m / T, F, T, F, T, F, T, F, T, F/
      
      call init(i,j)
      where(L04m)
        i04a(i:)=i04a(i:)+1
      elsewhere
        i04b(j:)=i04a(i:)-1
      endwhere
      error=error+check(i04a,i04ta)
      error=error+check(i04b,i04tb)
      if(error/=0) then
         write(6,*) '*** ng ?? ***'
         write(6,*) 'error count: ',error
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
      j=i*k
      end

      integer(kind=4) function check(i04x,i04y) result(res)
      integer(kind=4)::i04x(10),i04y(10)
      integer(kind=4),save::c=0
      res=0
      c=c+1
      do i=1,10
         if(i04x(i).ne.i04y(i)) then
            res=res+1
         endif
      enddo
      if(res/=0) then
         write(6,*) 'error at ',c,' times call'
         write(6,*) 'true value: ',i04y
         write(6,*) 'calc value: ',i04x
      endif
      end


