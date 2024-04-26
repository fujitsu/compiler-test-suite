      real rel4a1_0101(10),rel4a1_0102(10)
      do i=1,10
	rel4a1_0101(i)=(90+i)
        write(6,*) i
      end do
      rel4a1_0102=tan(rel4a1_0101)
      write(6,*) rel4a1_0101(1)
      stop
      end
