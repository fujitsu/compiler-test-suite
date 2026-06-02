      call sub()
      print *,'pass'
      end

      subroutine sub()
      integer a(2,3),b(3),c(2)
      logical lany,lall
!$omp parallel
!$omp workshare
      a =reshape((/1,2,3,4,5,6/),(/2,3/))
      b = (/1,2,3/)
      c = matmul(a,b)
      lany = any(c/=(/22,28/))
      lall = all(c==(/22,28/))
      imax = maxval(c)
      imin = minval(c)
      isum = sum(c)
      ipro = product(c)
      imaxl= maxloc(c,1)
      iminl= minloc(c,1)
!$omp end workshare
!$omp end parallel
      if (lany) print *,"fail"
      if (.not.lall) print *,"fail"
      if (imax/=28) print *,"fail"
      if (imin/=22) print *,"fail"
      if (isum/=50) print *,"fail"
      if (ipro/=22*28) print *,"fail"
      if (imaxl/=2) print *,"fail"
      if (iminl/=1) print *,"fail"
      end
