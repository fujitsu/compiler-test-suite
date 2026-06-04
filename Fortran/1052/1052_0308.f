      subroutine foo(r1)
      logical*1 r1(10),r2(10)/10*.false._1/
      logical*1 x(10)/.true._1,.false._1,.true._1,.false._1,.true._1,
     &                .false._1,.true._1,.false._1,.true._1,.false._1/
!$omp simd reduction(.eqv.:r1)
      do i=1,10
        r1(i)=r1(i).eqv.x(i)
      enddo
      do i=1,10
        r2(i)=r2(i).eqv.x(i)
      enddo
      do i=1,10
        if (r1(i).neqv.r2(i)) then
          print*,"NG:",i,r1(i),r2(i)
          stop 1
        endif
      enddo
      print*,"OK"
      end

      interface
        subroutine foo(r1)
        logical*1 r1(10)
        end subroutine
      end interface
      logical*1 a1(10)/10*.false._1/
      call foo(a1)
      end
 
