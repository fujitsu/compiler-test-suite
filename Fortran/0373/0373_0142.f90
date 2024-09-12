      module mod
      intrinsic DCOS
      parameter(K=8)
      parameter(N=100)
      real(kind=K),e/1.0d-14/
      real(kind=K),dimension(N) :: arg,ir,or
      real(kind=4),dimension(N) :: tmp
      end module

      program main
      use  mod
      call random
      call outline(DCOS)
      call inline 
      do i=1,n
         if(abs(ir(i)-or(i)).gt.e) then
            print*,"ng"
            print*,ir(i),or(i),abs(ir(i)-or(i))
         endif
      enddo
      print*,"ok"
      end

      subroutine random
      use mod
      INTEGER seed(10)/10*0/

      call random_seed(get=seed)
      do i=1,10
         seed(i)=seed(i)*5 /2  + 2 
      enddo
      call random_seed(put=seed)

      call random_number(tmp)
      arg = tmp
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
         ir(i)=DCOS(arg(i))
      enddo
      end