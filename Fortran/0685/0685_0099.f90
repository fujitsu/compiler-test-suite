      real*4::a(2)=(/1.0,2.0/)
      character*2::c(2)=(/'AB','BA'/)
      complex::b(2)=(/(1.0,2.0),(3.0,4.0)/)
!$omp parallel private(a,b,c)
      a=(/10.0,20.0/)
      c=(/'BT','TB'/)
      b=(/(10.0,20.0),(30.0,40.0)/)
      call sub (a,2)
      if (any(a/=(/10.0,20.0/))) print *,"fail"
      if (any(c/=(/'BT','TB'/))) print *,"fail"
      if (any(b/=(/(10.0,20.0),(30.0,40.0)/))) print *,"fail"
!$omp end parallel
      if (any(a/=(/1.0,2.0/))) print *,"fail"
      if (any(c/=(/'AB','BA'/))) print *,"fail"
      if (any(b/=(/(1.0,2.0),(3.0,4.0)/))) print *,"fail"
      print *,'pass'
    end

     subroutine sub(a,n)
      real a(n),b(n),c(n)
      Z=0
!$omp single private(a,b,c)
      a=100.0
      c=Z
      b=(-1.0,-2.0)
!$omp endsingle
     end subroutine
