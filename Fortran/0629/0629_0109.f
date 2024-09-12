      program main
      type TAG
      real,dimension(1000)::a
      real b
      end type
      type(TAG) st
      real,dimension(1000)::b

      b = 1.0
      do i=1,1000
         st%a(i) = i
         st%b = b(i)
      end do

      print *,st%a(1),st%a(10),st%a(100),st%a(1000)
      print *,st%b
      end
