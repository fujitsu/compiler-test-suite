      call test_acosh
      call test_dacosh
      call test_asinh
      call test_dasinh
      call test_atanh
      call test_datanh
      end

      subroutine test_acosh()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,3
         a(i) = acosh(b(i))
      enddo
      write(6,*) a

      do i=1,7
         a(i) = acosh(b(i)+2)
      enddo
      write(6,*) a
      end
      subroutine test_dacosh()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,3
         a(i) = acosh(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_asinh()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      real*4 res1(10)/0.48121184, 0.43604964, 0.39003533,
     + 0, 0, 0, 0, 0, 0, 0/
      real*4 res2(10)/0.8813736, 0.80886685, 0.7326682, 0.65266656,
     +     0.5688249, 0.48121184, 0.39003533, 0, 0, 0/

      do i=1,3
         a(i) = asinh(b(i)/20)
      enddo
      call check(a,res1)

      do i=1,7
         a(i) = asinh(b(i)/10)
      enddo
      call check(a,res2)
      end

      subroutine test_dasinh()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,3
         a(i) = asinh(b(i)/20)
      enddo
      write(6,*) a
      end

      subroutine test_atanh()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      real*4 res1(10)/0.54930615, 0.48470026, 0.42364895,
     + 0, 0, 0, 0, 0, 0, 0/
      real*4 res2(10)/1.5222614, 1.1512926, 0.9229134, 0.75203865,
     + 0.61188775, 0.49041465, 0.38107005, 0, 0, 0/

      do i=1,3
         a(i) = atanh(b(i)/20)
      enddo
      call check(a,res1)

      do i=1,7
         a(i) = atanh(b(i)/11)
      enddo
      call check(a,res2)

      end
      subroutine test_datanh()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,3
         a(i) = atanh(b(i)/20)
      enddo
      write(6,*) a
      end

#define IS_EQUAL(a,b) ((a==b).or.(a==0.and.abs(b)<10E-6).or.(abs(a-b)/abs(a)<10E-6))
      subroutine check(calc,res)
      real calc(10),res(10)
      logical ngcheck/.FALSE./
      do i=1,10
         if (IS_EQUAL(calc(i), res(i))) then
         else
            ngcheck = .TRUE.
         endif
      enddo
      if (ngcheck) write(6,*) calc
      end
