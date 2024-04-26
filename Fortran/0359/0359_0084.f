      call c8
      call c16
      end

      subroutine c8
      complex*8 a(10)/10*0/,c(10)/10*1/,d(10)/10*2/
      complex*8 resa(10),resd(10)
      real*4 x(10)/10*3/
      data resa/8*(4.,2.),0,0/
      data resd/8*(5.,0.),2,2/

      do i=1,8
         a(i) = c(i)+cmplx(3,real(d(i)))
         d(i) = d(i) + x(i)
      enddo
      do i=1,10
         if (a(i).ne.resa(i).or.d(i).ne.resd(i)) goto 10
      enddo
      goto 20
 10   write(6,*) ' ## test c8 NG ## '
      write(6,*) a
      write(6,*) d
      goto 30
 20   write(6,*) ' ## test c8 OK ## '
 30   continue
      end
      subroutine c16
      complex*16 a(10)/10*0/,c(10)/10*1/,d(10)/10*2/
      complex*16 resa(10),resd(10)
      real*8 x(10)/10*3/
      data resa/8*(4.,2.),0,0/
      data resd/8*(5.,0.),2,2/

      do i=1,8
         a(i) = c(i)+dcmplx(3,dreal(d(i)))
         d(i) = d(i) + x(i)
      enddo
      do i=1,10
         if (a(i).ne.resa(i).or.d(i).ne.resd(i)) goto 10
      enddo
      goto 20
 10   write(6,*) ' ## test c16 NG ## '
      write(6,*) a
      write(6,*) d
      goto 30
 20   write(6,*) ' ## test c16 OK ## '
 30   continue
      end
