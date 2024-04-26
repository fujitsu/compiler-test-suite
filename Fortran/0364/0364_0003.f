      integer(kind=4)::error/0/
      integer(kind=4),dimension(100)::i04a
      integer(kind=4),dimension  (2)::count
      
      error = error + ifun01(i04a,count)
      error = error + ifun02(i04a,count)
      error = error + ifun03(i04a,count)
      error = error + ifun04(i04a,count)
      error = error + ifun05(i04a,count)
      error = error + ifun06(i04a,count)
      error = error + ifun07(i04a,count)
      error = error + ifun08(i04a,count)
      
      if(error .eq. 0) then
         write(6,*) 'OK'
      else
         write(6,*) 'NG'
      endif
      stop
      end
!
      integer(kind=4) function ifun01(i04a,count) result(res)
      integer(kind=4),dimension(100)::i04a
      integer(kind=4),dimension  (2)::count

      n = 0
      call init(i04a,n)
      count(1) = 0
      count(2) = 0

      do i=1,100
         i04s = i04a(i)
         if(i04s .gt. 0) then
            index = 1
         else
            index = 2
         endif
         count(index) = count(index) + 1
      enddo
      res = icheck(count,n,"ifun01")
      end
!
      integer(kind=4) function ifun02(i04a,count) result(res)
      integer(kind=4),dimension(100)::i04a
      integer(kind=4),dimension  (2)::count

      n = 49
      call init(i04a,n)
      count(1) = 0
      count(2) = 0

      do i=1,100
         i04s = i04a(i)
         if(i04s .gt. 0) then
            index = 1
         else
            index = 2
         endif
         count(index) = count(index) + 1
      enddo
      res = icheck(count,n,"ifun02")
      end
!
      integer(kind=4) function ifun03(i04a,count) result(res)
      integer(kind=4),dimension(100)::i04a
      integer(kind=4),dimension  (2)::count

      n = 50
      call init(i04a,n)
      count(1) = 0
      count(2) = 0

      do i=1,100
         i04s = i04a(i)
         if(i04s .gt. 0) then
            index = 1
         else
            index = 2
         endif
         count(index) = count(index) + 1
      enddo
      res = icheck(count,n,"ifun03")
      end
!
      integer(kind=4) function ifun04(i04a,count) result(res)
      integer(kind=4),dimension(100)::i04a
      integer(kind=4),dimension  (2)::count

      n = 51
      call init(i04a,n)
      count(1) = 0
      count(2) = 0

      do i=1,100
         i04s = i04a(i)
         if(i04s .gt. 0) then
            index = 1
         else
            index = 2
         endif
         count(index) = count(index) + 1
      enddo
      res = icheck(count,n,"ifun04")
      end
!
      integer(kind=4) function ifun05(i04a,count) result(res)
      integer(kind=4),dimension(100)::i04a
      integer(kind=4),dimension  (2)::count

      n = 94
      call init(i04a,n)
      count(1) = 0
      count(2) = 0

      do i=1,100
         i04s = i04a(i)
         if(i04s .gt. 0) then
            index = 1
         else
            index = 2
         endif
         count(index) = count(index) + 1
      enddo
      res = icheck(count,n,"ifun05")
      end
!
      integer(kind=4) function ifun06(i04a,count) result(res)
      integer(kind=4),dimension(100)::i04a
      integer(kind=4),dimension  (2)::count

      n = 95
      call init(i04a,n)
      count(1) = 0
      count(2) = 0

      do i=1,100
         i04s = i04a(i)
         if(i04s .gt. 0) then
            index = 1
         else
            index = 2
         endif
         count(index) = count(index) + 1
      enddo
      res = icheck(count,n,"ifun06")
      end
!
      integer(kind=4) function ifun07(i04a,count) result(res)
      integer(kind=4),dimension(100)::i04a
      integer(kind=4),dimension  (2)::count

      n = 96
      call init(i04a,n)
      count(1) = 0
      count(2) = 0

      do i=1,100
         i04s = i04a(i)
         if(i04s .gt. 0) then
            index = 1
         else
            index = 2
         endif
         count(index) = count(index) + 1
      enddo
      res = icheck(count,n,"ifun07")
      end
!
      integer(kind=4) function ifun08(i04a,count) result(res)
      integer(kind=4),dimension(100)::i04a
      integer(kind=4),dimension  (2)::count

      n = 100
      call init(i04a,n)
      count(1) = 0
      count(2) = 0

      do i=1,100
         i04s = i04a(i)
         if(i04s .gt. 0) then
            index = 1
         else
            index = 2
         endif
         count(index) = count(index) + 1
      enddo
      res = icheck(count,n,"ifun08")
      end
!
      subroutine init(a,n)
      integer(kind=4),intent(out),dimension(100)::a
      integer(kind=4),intent(in)                ::n
      a = (/(/(1,i=1,n)/),(/(0,i=n+1,100)/)/)
      end
!
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

      
