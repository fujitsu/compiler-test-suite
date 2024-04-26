      integer(kind=4)::error/0/
      integer(kind=4),dimension(100)::i04a,i04b,i04c
      integer(kind=4)::count
      
      error = error + ifun01(i04a,i04b,i04c,count)
      error = error + ifun02(i04a,i04b,i04c,count)
      error = error + ifun03(i04a,i04b,i04c,count)
      error = error + ifun04(i04a,i04b,i04c,count)
      error = error + ifun05(i04a,i04b,i04c,count)
      error = error + ifun06(i04a,i04b,i04c,count)
      
      if(error .eq. 0) then
         write(6,*) 'OK'
      else
         write(6,*) 'NG'
      endif
      stop
      end
!
      integer(kind=4) function ifun01(i04a,i04b,i04c,count) result(res)
      integer(kind=4),dimension(100) ::i04a,i04b,i04c
      integer(kind=4)                ::count

      l = 10
      m = 50
      n = 90
      call init(i04a,i04b,i04c,l,m,n)
      count = 0

      do i=1,100
         incr = 0
         i04s1 = i04a(i)
         i04s2 = i04b(i)
         i04s3 = i04c(i)
         if(i04s1 .eq. 1 .or. i04s2 .eq. 1 .or. i04s3 .eq. 1) then
            incr = 1
         endif
         count = count + incr
      enddo
      res = icheck(count,"ifun01")
      end
!
      integer(kind=4) function ifun02(i04a,i04b,i04c,count) result(res)
      integer(kind=4),dimension(100) ::i04a,i04b,i04c
      integer(kind=4)                ::count

      l = 10
      m = 90
      n = 50
      call init(i04a,i04b,i04c,l,m,n)
      count = 0

      do i=1,100
         incr = 0
         i04s1 = i04a(i)
         i04s2 = i04b(i)
         i04s3 = i04c(i)
         if(i04s1 .eq. 1 .or. i04s2 .eq. 1 .or. i04s3 .eq. 1) then
            incr = 1
         endif
         count = count + incr
      enddo
      res = icheck(count,"ifun02")
      end
!
      integer(kind=4) function ifun03(i04a,i04b,i04c,count) result(res)
      integer(kind=4),dimension(100) ::i04a,i04b,i04c
      integer(kind=4)                ::count

      l = 50
      m = 10
      n = 90
      call init(i04a,i04b,i04c,l,m,n)
      count = 0

      do i=1,100
         incr = 0
         i04s1 = i04a(i)
         i04s2 = i04b(i)
         i04s3 = i04c(i)
         if(i04s1 .eq. 1 .or. i04s2 .eq. 1 .or. i04s3 .eq. 1) then
            incr = 1
         endif
         count = count + incr
      enddo
      res = icheck(count,"ifun03")
      end
!
      integer(kind=4) function ifun04(i04a,i04b,i04c,count) result(res)
      integer(kind=4),dimension(100) ::i04a,i04b,i04c
      integer(kind=4)                ::count

      l = 50
      m = 90
      n = 10
      call init(i04a,i04b,i04c,l,m,n)
      count = 0

      do i=1,100
         incr = 0
         i04s1 = i04a(i)
         i04s2 = i04b(i)
         i04s3 = i04c(i)
         if(i04s1 .eq. 1 .or. i04s2 .eq. 1 .or. i04s3 .eq. 1) then
            incr = 1
         endif
         count = count + incr
      enddo
      res = icheck(count,"ifun04")
      end
!
      integer(kind=4) function ifun05(i04a,i04b,i04c,count) result(res)
      integer(kind=4),dimension(100) ::i04a,i04b,i04c
      integer(kind=4)                ::count

      l = 90
      m = 10
      n = 50
      call init(i04a,i04b,i04c,l,m,n)
      count = 0

      do i=1,100
         incr = 0
         i04s1 = i04a(i)
         i04s2 = i04b(i)
         i04s3 = i04c(i)
         if(i04s1 .eq. 1 .or. i04s2 .eq. 1 .or. i04s3 .eq. 1) then
            incr = 1
         endif
         count = count + incr
      enddo
      res = icheck(count,"ifun05")
      end
!
      integer(kind=4) function ifun06(i04a,i04b,i04c,count) result(res)
      integer(kind=4),dimension(100) ::i04a,i04b,i04c
      integer(kind=4)                ::count

      l = 90
      m = 50
      n = 10
      call init(i04a,i04b,i04c,l,m,n)
      count = 0

      do i=1,100
         incr = 0
         i04s1 = i04a(i)
         i04s2 = i04b(i)
         i04s3 = i04c(i)
         if(i04s1 .eq. 1 .or. i04s2 .eq. 1 .or. i04s3 .eq. 1) then
            incr = 1
         endif
         count = count + incr
      enddo
      res = icheck(count,"ifun06")
      end
!
      subroutine init(a,b,c,l,m,n)
      integer(kind=4),intent(out),dimension(100)::a,b,c
      integer(kind=4),intent(in)                ::l,m,n
      a = (/(/(1,i=1,l)/),(/(0,i=l+1,100)/)/)
      b = (/(/(1,i=1,m)/),(/(0,i=m+1,100)/)/)
      c = (/(/(1,i=1,n)/),(/(0,i=n+1,100)/)/)
      end
!
      integer(kind=4) function icheck(c,s) result(res)
      integer(kind=4),intent(in)::c
      character*(*)  ,intent(in)::s
      res = 0
      if(c .ne. 90) then
         res = 1
      endif
      if(res /= 0) then
         write(6,*) 'ERROR AT ',s,' --> count:',c
      endif
      end

      
