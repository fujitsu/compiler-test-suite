module m1
integer::jc=0,ic=0
interface 
pure subroutine jff()
end subroutine
pure subroutine iff()
end subroutine
end interface
contains
pure function jf()
call jff
jf=1
end function
pure function if()
call iff
if=1
end function
end
use m1
!$omp parallel
!$omp single
      forall (ii=1:2)
      forall (jj=1:3)
      forall (kk=1:4)
        n=ii+jj+kk+if()
      end forall
      end forall
      end forall
!$omp end single
!$omp end parallel
      if (n/=10)print *,"fail"
      if (ic/=24)print *,"fail"
!$omp parallel
!$omp single
      forall (i=1:5)
      forall (j=1:6)
        n=i+j+jf()
      end forall
      end forall
!$omp end single
!$omp end parallel
      if (n/=12)print *,"fail"
      if (jc/=30)print *,"fail"
      print *,'pass'
      end
subroutine jff
use m1
jc=jc+1
end
subroutine iff
use m1
ic=ic+1
end
