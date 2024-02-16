      integer*8::i,j,m=5
      type st1
        real*4::z(5)
      end type
      type(st1)::xyz
      xyz%z=3.0
      do i=1,2
        xyz%z(m+(-1))=1.0
        do j=1,2
          m = 3
        end do
      end do
      print*,merge("OK","NG", all(xyz%z.eq.(/3,1,3,1,3/)))
      end
