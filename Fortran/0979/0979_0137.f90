      integer a(10)
      a=(/1,2,3,1,3,3,2,3,2,2/)
      call sub1(a)
      print *,'pass'
      end
      subroutine sub1(a)
      integer a(10),b(10)
      iminus=0
      izero =0
      iplus =0
!$omp parallel private(b),shared(a)
      do i=1,10
        b(i)=a(i)
      enddo
!$omp do reduction (+:iminus,izero)
      do j=1,10  
        go to (100,200) b(j)  
  100   continue
        iminus = iminus + 1
        goto 400
  200   continue
        izero = izero + 1
        goto 400
  400   continue
      enddo
!$omp enddo
!$omp end parallel
      end
