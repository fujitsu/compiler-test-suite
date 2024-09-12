      program main
      real(kind=4) :: d=1.0_4 , e=2.0_4 , f=3.0_4
      real(kind=4) :: x,f1,f2,f3
      print *,'start'
      x = f1(d,e,f)
      if (x .ne. 5.0_4)  print *,'NG f1 : ',x
      x = f2(d,e,f)
      if (x .ne. 4.0_4)  print *,'NG f2 : ',x
      x = f3(d,e,f)
      if (x .ne. 12.0_4) print *,'NG f3 : ',x
      print *,'end'
      end

      function f1(a,b,c)
      real(kind=4) :: f1
      real(kind=4) :: a,b,c
      real(kind=4) :: x,y
      x = a*b
      y = x+c
      f1 = y
      end function

      function f2(a,b,c)
      real(kind=4) :: f2
      real(kind=4) :: a,b,c
      real(kind=4) :: x,y,z
      x = a*b
      y = x+c
      z = x-c
      f2 = y+z
      end function

      function f3(a,b,c)
      real(kind=4) :: f3
      real(kind=4) :: a,b,c
      real(kind=4) :: x,y,z
      x = a*b
      y = x+c
      z = y
      y = x-c
      z = z+y
      y = x+z
      z = z+y
      f3 = a*b + z
      end function

