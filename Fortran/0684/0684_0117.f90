!$omp parallel private(i,k)
      assign 30 to i
      goto i
      print *,"fail"
30    continue
      assign 130 to i
      goto i
      print *,"fail"
130    continue
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
