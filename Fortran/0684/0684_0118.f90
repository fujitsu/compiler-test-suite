!$omp parallel private(i,k)
      assign 30 to i
      goto i
      print *,"fail"
30    continue
      assign 130 to i
      goto i
      print *,"fail"
130    continue
!$omp parallel private(i,k)
      assign 1030 to i
      goto i
      print *,"fail"
1030  continue
      assign 1130 to i
      goto i
      print *,"fail"
1130    continue
!$omp parallel private(i,k)
      assign 2030 to i
      goto i
      print *,"fail"
2030  continue
      assign 2130 to i
      goto i
      print *,"fail"
2130    continue
      do k=1,3
        select case(k)
          case(1)
            assign 2230 to i
          case(2)
            assign 2330 to i
          case(3)
            assign 2430 to i
        end select
        goto i
        print *,"fail"
2230     continue
        if (k/=1)print *,"fail"
        cycle
2330     continue
        if (k/=2)print *,"fail"
        cycle
2430     continue
        if (k/=3)print *,"fail"
        cycle
      end do
!$omp end parallel 
      do k=1,3
        select case(k)
          case(1)
            assign 1230 to i
          case(2)
            assign 1330 to i
          case(3)
            assign 1430 to i
        end select
        goto i
        print *,"fail"
1230     continue
        if (k/=1)print *,"fail"
        cycle
1330     continue
        if (k/=2)print *,"fail"
        cycle
1430     continue
        if (k/=3)print *,"fail"
        cycle
      end do
!$omp end parallel 
      do k=1,3
        select case(k)
          case(1)
            assign 230 to i
          case(2)
            assign 330 to i
          case(3)
            assign 430 to i
        end select
        goto i
        print *,"fail"
230     continue
        if (k/=1)print *,"fail"
        cycle
330     continue
        if (k/=2)print *,"fail"
        cycle
430     continue
        if (k/=3)print *,"fail"
        cycle
      end do
!$omp end parallel 
      assign 50 to i
      goto i
      print *,"fail"
50    continue
      assign 150 to i
      goto i
      print *,"fail"
150    continue
      do k=1,3
        select case(k)
          case(1)
            assign 250 to i
          case(2)
            assign 350 to i
          case(3)
            assign 450 to i
        end select
        goto i
        print *,"fail"
250     continue
        if (k/=1)print *,"fail"
        cycle
350     continue
        if (k/=2)print *,"fail"
        cycle
450     continue
        if (k/=3)print *,"fail"
        cycle
      end do
!$omp parallel private(i,k)
      assign 60 to i
      goto i
      print *,"fail"
60    continue
!$omp parallel private(i,k)
      assign 1060 to i
      goto i
      print *,"fail"
1060    continue
      assign 1160 to i
      goto i
      print *,"fail"
1160    continue
!$omp parallel private(i,k)
      assign 2060 to i
      goto i
      print *,"fail"
2060    continue
      assign 2160 to i
      goto i
      print *,"fail"
2160    continue
      do k=1,3
        select case(k)
          case(1)
            assign 2260 to i
          case(2)
            assign 2360 to i
          case(3)
            assign 2460 to i
        end select
        goto i
        print *,"fail"
2260     continue
        if (k/=1)print *,"fail"
        cycle
2360     continue
        if (k/=2)print *,"fail"
        cycle
2460     continue
        if (k/=3)print *,"fail"
        cycle
      end do
!$omp end parallel
      do k=1,3
        select case(k)
          case(1)
            assign 1260 to i
          case(2)
            assign 1360 to i
          case(3)
            assign 1460 to i
        end select
        goto i
        print *,"fail"
1260     continue
        if (k/=1)print *,"fail"
        cycle
1360     continue
        if (k/=2)print *,"fail"
        cycle
1460     continue
        if (k/=3)print *,"fail"
        cycle
      end do
!$omp end parallel
      assign 160 to i
      goto i
      print *,"fail"
160    continue
      do k=1,3
        select case(k)
          case(1)
            assign 260 to i
          case(2)
            assign 360 to i
          case(3)
            assign 460 to i
        end select
        goto i
        print *,"fail"
260     continue
        if (k/=1)print *,"fail"
        cycle
360     continue
        if (k/=2)print *,"fail"
        cycle
460     continue
        if (k/=3)print *,"fail"
        cycle
      end do
!$omp end parallel
      print *,'pass'
      end
