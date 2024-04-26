      integer(kind=4)::func01,func02,func03,error=0

      error=error+func01()
      error=error+func02()
      error=error+func03()

      if(error/=0) then
         write(6,*) '*** ng ?? ***'
         write(6,*) 'error count: ',error
      else
         write(6,*) '*** ok    ***'
      endif
      stop
      end

      integer(kind=4) function func01() result(res)
      integer(kind=4)::i04a(10),i04m(10),i04t(10)
      integer(kind=4)::check
      data i04a/0,1,2,3,4,5,6,7,8,9/
      data i04m/1,0,1,0,1,0,1,0,1,0/
      data i04t/1,1,3,3,5,5,7,7,9,9/
      
      where(i04m/=0)
        i04a=i04a+1
      endwhere
      res=check(i04a,i04t)
      end

      integer(kind=4) function func02() result(res)
      logical(kind=4),parameter::T=.TRUE.,F=.FALSE.
      integer(kind=4)::i04a(10),i04t(10)
      logical(kind=4)::L04m(10),L04n
      integer(kind=4)::check
      data i04a/0,1,2,3,4,5,6,7,8,9/
      data i04t/1,1,3,3,5,5,7,7,9,9/
      data L04m/F,T,F,T,F,T,F,T,F,T/
      
      call init(L04n)
      where(L04m .neqv. L04n)
        i04a=i04a+1
      endwhere
      res=check(i04a,i04t)
      end

      integer(kind=4) function func03() result(res)
      logical(kind=4),parameter::T=.TRUE.,F=.FALSE.
      integer(kind=4)::i04a(10),i04t(10)
      logical(kind=4)::L04m(10)
      integer(kind=4)::check
      data i04a/0,1,2,3,4,5,6,7,8,9/
      data L04m/T,F,T,F,T,F,T,F,T,F/
      data i04t/1,1,3,3,5,5,7,7,9,9/
      
      where(L04m.neqv.F)
        i04a=i04a+1
      endwhere
      res=check(i04a,i04t)
      end

      subroutine init(L04x)
      logical(kind=4)::L04x
      logical(kind=4),save::L04s
      do i=1,10
         L04s=mod(i,2).eq.0
      enddo
      L04x=L04s
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



