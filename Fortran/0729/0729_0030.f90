      implicit none
      real*8 u(5,5)
      integer shape(2)
      integer i,j
      do i=1,2
        shape(i)=5
      end do
      do i=1,5
        do j=1,5
          u(i,j)=i*1.0
        end do
      end do
      call try(shape,u)
      print *,'pass'
      end

      subroutine try(shape1,u1)
      implicit none
      integer shape1(2),i,j
      real*8  u1(shape1(1),shape1(2)),uu(5)
      do i=1,5
        write(1,"(5f10.6)") (u1(i,j),j=1,5)
      end do
 rewind 1
 read(1,*) uu;if(any(abs(uu-1)>0.0001))write(6,*) "NG"
 read(1,*) uu;if(any(abs(uu-2)>0.0001))write(6,*) "NG"
 read(1,*) uu;if(any(abs(uu-3)>0.0001))write(6,*) "NG"
 read(1,*) uu;if(any(abs(uu-4)>0.0001))write(6,*) "NG"
 read(1,*) uu;if(any(abs(uu-5)>0.0001))write(6,*) "NG"
      return
      end
