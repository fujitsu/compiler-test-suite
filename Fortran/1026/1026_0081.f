      real,dimension(:,:),pointer:: window1
      real,dimension(1:10,1:10),target :: table
      window1 => table(2:3,4:5)
      do i=1,10
      do j=1,10
	table(i,j) = j
      end do
      end do
      print *,window1
      print *,window1(1:2,1:2)
      end
