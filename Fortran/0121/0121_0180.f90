        subroutine test(aa)
        integer*8 aa(*)
      integer*8::i,m=5
      type st1
        character*5 z
      end type
      type(st1)::xyz
      xyz%z = '33333'
      do i=1,2
        aa(i) = 1
        xyz%z(m-1:m-1)='1'
        do m=1,2
        end do
      end do
      print*,merge("OK","NG", xyz%z.eq.'31313')
      end

        integer*8 aa(3)
        call test(aa)
        end
