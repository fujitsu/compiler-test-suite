      module mod
      intrinsic SIN
      intrinsic COS    
      parameter(K=4)
      parameter(N=100)
      real(kind=K),e/1.0e-6/
      real(kind=K),dimension(N)   :: arg
      real(kind=K),dimension(2,N) :: ir,or
      real(kind=4),dimension(N)   :: tmp
      end module

      program main
      use  mod
      call random
      call outline(SIN,COS)
      call inline 
      do j=1,2
      do i=1,n
         if(abs(ir(j,i)-or(j,i)).gt.e) then
            print*,"ng"
         print*,j,ir(j,i),or(j,i),abs(ir(j,i)-or(j,i))
         endif
      enddo
      enddo
      print*,"ok"
      end

      subroutine random
      use mod
      INTEGER seed(10)/10*0/

      call random_seed(get=seed)
      do i=1,10
         seed(i)=seed(i)/2 * 4 + 2
      enddo
      call random_seed(put=seed)

      call random_number(tmp)
      arg = tmp
      end

      subroutine outline(func1,func2)
      use mod
      real(kind=k) :: func1, func2
      do i=1,n
         or(1,i)=func1(arg(i))
         or(2,i)=func2(arg(i))
      enddo
      end

      subroutine inline
      use  mod
      do i=1,n
         ir(1,i)=SIN(arg(i))
         ir(2,i)=COS(arg(i))
      enddo
      end
