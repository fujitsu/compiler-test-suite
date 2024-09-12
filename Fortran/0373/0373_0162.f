      real a(2), ag(2), b(2), bg(2)
      equivalence (ag,a)
      equivalence (bg,b)
      b = 0
      do i=1,2
        a(i)=b(i)
      end do
      print *,'ok'
      end
