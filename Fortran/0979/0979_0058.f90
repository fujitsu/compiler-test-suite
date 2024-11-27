module mod
 integer,dimension(2) ::a,b
 protected :: a,b
 contains
  subroutine sub(a,b)
   integer,dimension(2) ::a,b
   a=(/1,2/)
      iminus=0
      izero =0
!$omp parallel private(b),shared(a)
      do i=1,2
        b(i)=a(i)
      enddo
!$omp do reduction (+:iminus,izero)
      do j=1,2
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
  end subroutine
end module

use mod
call sub(a,b)
if (a(1).ne.1) write(6,*) "NG"
if (a(2).ne.2) write(6,*) "NG"
print *,"pass"
end
