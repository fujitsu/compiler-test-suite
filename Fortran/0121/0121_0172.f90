      integer*8::i,m=5
      real*4  tmp
      type st1
        real*4::z(5)
      end type
      type(st1)::xyz
      xyz%z=3.0
      do i=1,2
        tmp = 1.0
        xyz%z(m+(-1))=tmp
        do m=1,2
        end do
      end do
      print*,tmp
      print*,merge("OK","NG", all(xyz%z.eq.(/3,1,3,1,3/)))
      end
