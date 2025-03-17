      real,target :: a(3:10)
      real,pointer :: p1(:), p2(:)
      a=7
      do i=3,10
      a(i)=i
      end do
      p1 => a(3:9:2)
      p2 => a(9:3:-2)
      print *,p1
      print *,p2
      print *,associated(p1,p2)
      end
