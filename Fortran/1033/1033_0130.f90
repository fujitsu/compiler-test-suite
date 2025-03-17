      call s1
      print *,'pass'
      end
      subroutine s1
      complex*16 a1(2,2)/(1,1),(2,2),(3,3),(4,4)/
      call ss1(+a1)
      end
      subroutine ss1(a)
      complex*16 a(*)
      do i=1,4
        if (abs(a(i)-dcmplx(i,i))>.1d-4) then
            print *,a(i),dcmplx(i,i) 
            write(6,*) "NG"
        end if
      end do
      end
