      function func(n,a)
      integer i,n
      integer*8 func,a(n)
      func=0.0
      do i = 1,n
         func=func+a(i)
      enddo
      end function

      integer n
      integer*8 a,func
      dimension a(10)
      n = 10
      data a/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
      if (func(n,a) .eq. 55) then
        write(6,*) "ok"
      else
        write(6,*) "ng"
      endif
      end
