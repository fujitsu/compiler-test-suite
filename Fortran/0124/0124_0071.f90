
      integer, parameter :: N=20
      real(kind=4),dimension(1:N) :: a

      call ini(a,N)
      call ddd(i)

      res1 = sum(a)*14._4
      res2 = 0._4

      j=0

 600  j=j+1
      if (j>N) then
         goto 800
      endif

      do 200 while (j<=N)
        a(i) = a(i) - 1._4
        a(j) = a(j) + 2._4
        if (j > 15) then
          goto 400
        endif
        j=j+1
 200  end do

 400  res2 = res2 + sum(a)
      goto 600
 800  res2 = res2
 
      if (res1==res2) then
         print *,"OK"
      else
         print *,"NG ","array=",a,",res1=",res1,",res2=",res2
      endif
      
      end

      subroutine ini(a,N)
      real(kind=4),dimension(1:N) :: a
      integer  N
      a = (/(real(mod(i,2)),i=1,N)/)
      end subroutine

      subroutine ddd(i)
      integer i
      i = 4
      i = iii(i,i*i)
      end subroutine 

      function iii(i,s)
      integer i,s
      i = s
      iii = i
      end function
