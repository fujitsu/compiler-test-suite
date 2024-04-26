      integer(kind=4)::error=0
 
      error=error+ifun01()
      error=error+ifun02()
      error=error+ifun03()
      error=error+ifun04()
      error=error+ifun05()
      error=error+ifun06()
      error=error+ifun07()
      error=error+ifun08()
      error=error+ifun09()
      error=error+ifun10()
      error=error+ifun11()
      error=error+ifun12()
      error=error+ifun13()
      error=error+ifun14()
      error=error+ifun15()

      if(error/=0) then
         write(6,*) '*** ng ?? ***'
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
      
      integer(kind=4) function ifun01() result(res)
      logical(kind=4),parameter::T=.TRUE.,F=.FALSE.
      logical(kind=4)::L04m(10)
      integer(kind=4)::check,i04a(10),i04t(10)
      data L04m/T,F,T,F,T,F,T,F,T,F/
      data i04t/0,3,2,5,4,7,6,9,8,11/

      i04a=(/(i,i=1,10)/)
      where(L04m)
        i04a=i04a-1
      elsewhere
        i04a=i04a+1
      endwhere

      res=check(i04a,i04t)
      if(res/=0) then
         write(6,*) 'error at ifun01'
         write(6,*) 'true value: ',i04t
         write(6,*) 'calc value: ',i04a
      endif 
      end

      integer(kind=4) function ifun02() result(res)
      integer(kind=4)::i04m(10)
      integer(kind=4)::check,i04a(10),i04t(10)
      data i04m/1,0,1,0,1,0,1,0,1,0/
      data i04t/0,3,2,5,4,7,6,9,8,11/

      i04a=(/(i,i=1,10)/)
      where(i04m.eq.1)
        i04a=i04a-1
      elsewhere
        i04a=i04a+1
      endwhere

      res=check(i04a,i04t)
      if(res/=0) then
         write(6,*) 'error at ifun02'
         write(6,*) 'true value: ',i04t
         write(6,*) 'calc value: ',i04a
      endif 
      end

      integer(kind=4) function ifun03() result(res)
      integer(kind=4)::i04m(10)
      integer(kind=4)::check,i04a(10),i04t(10)
      data i04m/0,1,0,1,0,1,0,1,0,1/
      data i04t/0,3,2,5,4,7,6,9,8,11/

      i04a=(/(i,i=1,10)/)
      where(i04m.ne.1)
        i04a=i04a-1
      elsewhere
        i04a=i04a+1
      endwhere

      res=check(i04a,i04t)
      if(res/=0) then
         write(6,*) 'error at ifun03'
         write(6,*) 'true value: ',i04t
         write(6,*) 'calc value: ',i04a
      endif 
      end

      integer(kind=4) function ifun04() result(res)
      integer(kind=4)::i04m(10)
      integer(kind=4)::check,i04a(10),i04t(10)
      data i04m/1,0,2,0,3,0,4,0,5,0/
      data i04t/0,3,2,5,4,7,6,9,8,11/

      i04a=(/(i,i=1,10)/)
      where(i04m.gt.0)
        i04a=i04a-1
      elsewhere
        i04a=i04a+1
      endwhere

      res=check(i04a,i04t)
      if(res/=0) then
         write(6,*) 'error at ifun04'
         write(6,*) 'true value: ',i04t
         write(6,*) 'calc value: ',i04a
      endif 
      end

      integer(kind=4) function ifun05() result(res)
      integer(kind=4)::i04m(10)
      integer(kind=4)::check,i04a(10),i04t(10)
      data i04m/1,0,2,0,3,0,4,0,5,0/
      data i04t/0,3,2,5,4,7,6,9,8,11/

      i04a=(/(i,i=1,10)/)
      where(i04m.ge.1)
        i04a=i04a-1
      elsewhere
        i04a=i04a+1
      endwhere

      res=check(i04a,i04t)
      if(res/=0) then
         write(6,*) 'error at ifun05'
         write(6,*) 'true value: ',i04t
         write(6,*) 'calc value: ',i04a
      endif 
      end

      integer(kind=4) function ifun06() result(res)
      integer(kind=4)::i04m(10)
      integer(kind=4)::check,i04a(10),i04t(10)
      data i04m/0,2,0,3,0,4,0,5,0,6/
      data i04t/0,3,2,5,4,7,6,9,8,11/

      i04a=(/(i,i=1,10)/)
      where(i04m.le.0)
        i04a=i04a-1
      elsewhere
        i04a=i04a+1
      endwhere

      res=check(i04a,i04t)
      if(res/=0) then
         write(6,*) 'error at ifun06'
         write(6,*) 'true value: ',i04t
         write(6,*) 'calc value: ',i04a
      endif 
      end

      integer(kind=4) function ifun07() result(res)
      integer(kind=4)::i04m(10)
      integer(kind=4)::check,i04a(10),i04t(10)
      data i04m/0,2,0,3,0,4,0,5,0,6/
      data i04t/0,3,2,5,4,7,6,9,8,11/

      i04a=(/(i,i=1,10)/)
      where(i04m.lt.1)
        i04a=i04a-1
      elsewhere
        i04a=i04a+1
      endwhere

      res=check(i04a,i04t)
      if(res/=0) then
         write(6,*) 'error at ifun07'
         write(6,*) 'true value: ',i04t
         write(6,*) 'calc value: ',i04a
      endif 
      end

      integer(kind=4) function ifun08() result(res)
      logical(kind=4),parameter::T=.TRUE.,F=.FALSE.
      logical(kind=4)::L04m(10)
      integer(kind=4)::check,i04a(10),i04t(10)
      data L04m/F,T,F,T,F,T,F,T,F,T/
      data i04t/0,3,2,5,4,7,6,9,8,11/

      i04a=(/(i,i=1,10)/)
      where(L04m.neqv.T)
        i04a=i04a-1
      elsewhere
        i04a=i04a+1
      endwhere

      res=check(i04a,i04t)
      if(res/=0) then
         write(6,*) 'error at ifun08'
         write(6,*) 'true value: ',i04t
         write(6,*) 'calc value: ',i04a
      endif 
      end

      integer(kind=4) function ifun09() result(res)
      logical(kind=4),parameter::T=.TRUE.,F=.FALSE.
      logical(kind=4)::L04m(10)
      integer(kind=4)::check,i04a(10),i04t(10)
      data L04m/T,F,T,F,T,F,T,F,T,F/
      data i04t/0,3,2,5,4,7,6,9,8,11/

      i04a=(/(i,i=1,10)/)
      where(L04m.eqv.T)
        i04a=i04a-1
      elsewhere
        i04a=i04a+1
      endwhere

      res=check(i04a,i04t)
      if(res/=0) then
         write(6,*) 'error at ifun09'
         write(6,*) 'true value: ',i04t
         write(6,*) 'calc value: ',i04a
      endif 
      end

      integer(kind=4) function ifun10() result(res)
      character(len=2)::L04m(10)
      integer (kind=4)::check,i04a(10),i04t(10)
      data L04m/"ab","ba","ab","ba","ab","ba","ab","ba","ab","ba"/
      data i04t/0,3,2,5,4,7,6,9,8,11/

      i04a=(/(i,i=1,10)/)
      where(L04m .eq. "ab")
        i04a=i04a-1
      elsewhere
        i04a=i04a+1
      endwhere

      res=check(i04a,i04t)
      if(res/=0) then
         write(6,*) 'error at ifun10'
         write(6,*) 'true value: ',i04t
         write(6,*) 'calc value: ',i04a
      endif 
      end

      integer(kind=4) function ifun11() result(res)
      character(len=2)::L04m(10)
      integer (kind=4)::check,i04a(10),i04t(10)
      data L04m/"ab","ba","ab","ba","ab","ba","ab","ba","ab","ba"/
      data i04t/0,3,2,5,4,7,6,9,8,11/

      i04a=(/(i,i=1,10)/)
      where(L04m .ne. "ba")
        i04a=i04a-1
      elsewhere
        i04a=i04a+1
      endwhere

      res=check(i04a,i04t)
      if(res/=0) then
         write(6,*) 'error at ifun11'
         write(6,*) 'true value: ',i04t
         write(6,*) 'calc value: ',i04a
      endif 
      end

      integer(kind=4) function ifun12() result(res)
      character(len=2)::L04m(10)
      integer (kind=4)::check,i04a(10),i04t(10)
      data L04m/"ac","aa","bb","ab","bc","aa","bd","ab","cc","aa"/
      data i04t/0,3,2,5,4,7,6,9,8,11/

      i04a=(/(i,i=1,10)/)
      where(L04m .gt. "ab")
        i04a=i04a-1
      elsewhere
        i04a=i04a+1
      endwhere

      res=check(i04a,i04t)
      if(res/=0) then
         write(6,*) 'error at ifun12'
         write(6,*) 'true value: ',i04t
         write(6,*) 'calc value: ',i04a
      endif 
      end

      integer(kind=4) function ifun13() result(res)
      character(len=2)::L04m(10)
      integer (kind=4)::check,i04a(10),i04t(10)
      data L04m/"ab","aa","bb","aa","bc","aa","bd","aa","cc","aa"/
      data i04t/0,3,2,5,4,7,6,9,8,11/

      i04a=(/(i,i=1,10)/)
      where(L04m .ge. "ab")
        i04a=i04a-1
      elsewhere
        i04a=i04a+1
      endwhere

      res=check(i04a,i04t)
      if(res/=0) then
         write(6,*) 'error at ifun13'
         write(6,*) 'true value: ',i04t
         write(6,*) 'calc value: ',i04a
      endif 
      end

      integer(kind=4) function ifun14() result(res)
      character(len=2)::L04m(10)
      integer (kind=4)::check,i04a(10),i04t(10)
      data L04m/"ab","ba","aa","bb","ab","bc","aa","cc","ab","cd"/
      data i04t/0,3,2,5,4,7,6,9,8,11/

      i04a=(/(i,i=1,10)/)
      where(L04m .le. "ab") 
        i04a=i04a-1
      elsewhere
        i04a=i04a+1
      endwhere

      res=check(i04a,i04t)
      if(res/=0) then
         write(6,*) 'error at ifun14'
         write(6,*) 'true value: ',i04t
         write(6,*) 'calc value: ',i04a
      endif 
      end

      integer(kind=4) function ifun15() result(res)
      character(len=2)::L04m(10)
      integer (kind=4)::check,i04a(10),i04t(10)
      data L04m/"aa","ba","aa","bb","aa","bc","aa","cc","aa","cd"/
      data i04t/0,3,2,5,4,7,6,9,8,11/

      i04a=(/(i,i=1,10)/)
      where(L04m .lt. "ab")
        i04a=i04a-1
      elsewhere
        i04a=i04a+1
      endwhere

      res=check(i04a,i04t)
      if(res/=0) then
         write(6,*) 'error at ifun15'
         write(6,*) 'true value: ',i04t
         write(6,*) 'calc value: ',i04a
      endif 
      end


