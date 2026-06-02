      integer(4),dimension(10)::a,b
      a = (/4,3,1,6,10,9,8,2,5,7/)
      call sub(a,10)
      print *,'pass'
      end

      subroutine sub(a,len)
      integer(4),dimension(len)::a
      save::isum,ipro,imax,imin,imaxl,iminl
!$omp parallel
!$omp workshare
      isum = sum(a)
      ipro = product(a)
      imax = maxval(a)
      imin = minval(a)
      imaxl = maxloc(a,1)
      iminl = minloc(a,1)
!$omp end workshare
!$omp end parallel
      if (isum/=55) print *,"fail"
      if (ipro/=3628800) print *,"fail"
      if (imax/=10) print *,"fail"
      if (imin/=1) print *,"fail"
      if (imaxl/=5) print *,"fail"
      if (iminl/=3) print *,"fail"
      end
