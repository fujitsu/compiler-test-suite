      program main
      k=100
!$omp parallel
!$omp sections firstprivate(k)
!$omp section
      i=k+5
      if (i .ne. 105) then
        print *,"NG: i=",i
      end if
!$omp section
      j=k+6
      if (j .ne. 106) then
        print *,"NG: j=",j
      end if
!$omp endsections
!$omp endparallel
      print *,"pass"
      end
