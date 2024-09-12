      program main
      real(kind=4) :: d=1.0_4 , e=2.0_4 , f=3.0_4
      real(kind=4) :: x,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12
      print *,'start'
      x = f1(d,e,f)
      if (x .ne. 1.0_4) print *,'NG f1 : ',x
      x = f2(d,e,f)
      if (x .ne. 1.0_4) print *,'NG f2 : ',x
      x = f3(d,e,f)
      if (x .ne. -5.0_4) print *,'NG f3 : ',x
      x = f4(d,e,f)
      if (x .ne. -5.0_4) print *,'NG f4 : ',x
      x = f5(d,e,f)
      if (x .ne. 1.0_4) print *,'NG f5 : ',x
      x = f6(d,e,f)
      if (x .ne. 1.0_4) print *,'NG f6 : ',x
      x = f7(d,e,f)
      if (x .ne. 5.0_4) print *,'NG f7 : ',x
      x = f8(d,e,f)
      if (x .ne. 5.0_4) print *,'NG f8 : ',x
      x = f9(d,e,f)
      if (x .ne. 5.0_4) print *,'NG f9 : ',x
      x = f10(d,e,f)
      if (x .ne. -1.0_4) print *,'NG f10 : ',x
      x = f11(d,e,f)
      if (x .ne. 5.0_4) print *,'NG f11 : ',x
      x = f12(d,e,f)
      if (x .ne. 1.0_4) print *,'NG f12 : ',x
      print *,'end'
      end

      function f1(a,b,c)
      real(kind=4) :: f1
      real(kind=4) :: a,b,c
      f1 = (-a)*b+c
      end function

      function f2(a,b,c)
      real(kind=4) :: f2
      real(kind=4) :: a,b,c
      f2 = a*(-b)+c
      end function

      function f3(a,b,c)
      real(kind=4) :: f3
      real(kind=4) :: a,b,c
      f3 = (-a)*b-c
      end function

      function f4(a,b,c)
      real(kind=4) :: f4
      real(kind=4) :: a,b,c
      f4 = a*(-b)-c
      end function

      function f5(a,b,c)
      real(kind=4) :: f5
      real(kind=4) :: a,b,c
      f5 = c+(-a)*b
      end function

      function f6(a,b,c)
      real(kind=4) :: f6
      real(kind=4) :: a,b,c
      f6 = c+a*(-b)
      end function

      function f7(a,b,c)
      real(kind=4) :: f7
      real(kind=4) :: a,b,c
      f7 = c-(-a)*b
      end function

      function f8(a,b,c)
      real(kind=4) :: f8
      real(kind=4) :: a,b,c
      f8 = c-a*(-b)
      end function

      function f9(a,b,c)
      real(kind=4) :: f9
      real(kind=4) :: a,b,c
      f9 = (-a)*(-b)+c
      end function

      function f10(a,b,c)
      real(kind=4) :: f10
      real(kind=4) :: a,b,c
      f10 = (-a)*(-b)-c
      end function

      function f11(a,b,c)
      real(kind=4) :: f11
      real(kind=4) :: a,b,c
      f11 = c+(-a)*(-b)
      end function

      function f12(a,b,c)
      real(kind=4) :: f12
      real(kind=4) :: a,b,c
      f12 = c-(-a)*(-b)
      end function
