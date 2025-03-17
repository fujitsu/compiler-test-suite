      complex*16 a1(2)
      pointer (p,b)
      a1(1)=(1,1)
      a1(2)=(2,2)
      p=loc(a1)
      call ss1(+a1)
      end
      subroutine ss1(a)
      complex*16 a(*)
      integer*8 b(4)
      pointer (p,b)
      p=loc(a)
      print '(1h z16.16)',b(1)
      print '(1h z16.16)',b(2)
      print '(1h z16.16)',b(3)
      print '(1h z16.16)',b(4)
      print *,a(1)
      print *,a(2)
      do i=1,2
        if (abs(a(i)-dcmplx(i,i))>.1d-4) then
            print *,a(i),dcmplx(i,i)
            write(6,*) "NG"
        end if
      end do
      print *,"pass"
      end
