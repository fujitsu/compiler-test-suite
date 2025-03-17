      pointer p1(:)
      target d1
      allocatable :: d1(:)
      allocate(d1(10))
      p1=>d1
      p1 = 200
      print *,d1
      end
