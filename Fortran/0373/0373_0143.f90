      module mod
      intrinsic DEXP
      parameter(K=8)
      parameter(N=100)
      real(kind=K),e/1.0d-13/
      real(kind=K),dimension(N) :: arg,ir,or
      real(kind=4),dimension(N) :: tmp
      end module

      program main
      use  mod
      real*8 x,y,error
      error(x,y)=(dabs(x-y)/x)
      call random
      call outline(DEXP)
      call inline 
      do i=1,n
         if(error(ir(i),or(i)).gt.e) then
            print*,"ng",i,error(ir(i),or(i))
         endif
      enddo
      print*,"ok"
      end

      subroutine random
      use mod
      INTEGER seed(10)/1,2,3,4,5,6,7,8,9,10/

      call random_seed(get=seed)
      do i=1,10
         seed(i)=seed(i)*5 /2  + 2 
      enddo
      call random_seed(put=seed)

      call random_number(tmp)
      do i=1,n
         arg(i) = dble(i)+dble(tmp(i))
      enddo
      end

      subroutine outline(func)
      use mod
      real(kind=k) :: func
      do i=1,n
         or(i)=func(arg(i))
      enddo
      end

      subroutine inline
      use  mod
      do i=1,n
         ir(i)=DEXP(arg(i))
      enddo
      end
