 integer ia101
 integer chk(2)
 integer dat(2)
 integer omp_get_thread_num

  ia101 = 1
!$omp parallel
!$omp sections firstprivate(ia101)
!$omp section
  ia101 = ia101 + 1
  chk(1) = omp_get_thread_num()
  dat(1) = ia101
!$omp section
  ia101 = ia101 + 1
  chk(2) = omp_get_thread_num()
  dat(2) = ia101
!$omp endsections
!$omp endparallel


  if( chk(1) .eq. chk(2) )then
    if( dat(1) .eq. 3 .or. dat(2) .eq. 3 )then
      print *,"test OpenMP2.5"
      print *,"OK"
    else
      print *,"test OpenMP2.5"
      print *,"NG"
    endif
  else
    if( dat(1) .eq. 2 .and. dat(2) .eq. 2 )then
      print *,"test OpenMP2.5"
      print *,"OK"
    else
      print *,"test OpenMP2.5"
      print *,"NG"
    endif
  endif

  end
