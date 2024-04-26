      integer(kind=4)::error/0/
      integer(kind=4),dimension(100)::i04a
      integer(kind=4),dimension  (2)::count
      
      error = error + ifun01(i04a,count)
      
      if(error .eq. 0) then
         write(6,*) 'pass'
      else
         write(6,*) 'NG'
      endif
      stop
      end

      integer(kind=4) function ifun01(i04a,count) result(res)
      integer(kind=4),dimension(100)::i04a
      integer(kind=4),dimension  (2)::count

      n = 0
      call init(i04a,n)
      count(1) = 0
      count(2) = 0

      do i=1,100
         i04s = i04a(i)
         if(i04s .eq. 1) then
            index = 1
         else
            index = 2
         endif
         count(index) = count(index) + 1
      enddo
      res = icheck(count,n,"ifun01")
      end


      subroutine init(a,n)
      integer(kind=4),intent(out),dimension(100)::a
      integer(kind=4),intent(in)                ::n
      a = (/(/(1,i=1,n)/),(/(0,i=n+1,100)/)/)
      end

      integer(kind=4) function icheck(c,n,s) result(res)
      integer(kind=4),intent(in),dimension(2)::c
      integer(kind=4),intent(in)             ::n
      character*(*)  ,intent(in)             ::s
      res = 0
      if(c(1) .ne. n .or. c(2) .ne. 100-n) then
         res = 1
      endif
      if(res /= 0) then
         write(6,*) 'ERROR AT ',s,' --> true/false:',c
      endif
      end

      
