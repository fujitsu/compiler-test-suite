      common /com/ ja(5),ia(10),i1,i2,i3,i4,i5,ka(10)
      do i=1,10
        ia(i)=i
        if (i.le.5) ja(i)=i
        ka(i)=i*i
      enddo
      i1=51
      i2=52
      i3=53
      i4=54
      i5=55
!$omp parallel private(/com/)
      do i=1,10
        ia(i)=i+10
        if (i.le.5) ja(i)=i+i
        ka(i)=ia(i)-1
      enddo
      i1=71
      i2=72
      i3=73
      i4=74
      i5=75
      if (any(ia/=(/11,12,13,14,15,16,17,18,19,20/))) print *,"fail"
      if (any(ja/=(/ 2, 4, 6, 8,10/))) print *,"fail"
      if (any(ka/=(/10,11,12,13,14,15,16,17,18,19/))) print *,"fail"
      if(i1/=71.or.i2/=72.or.i3/=73.or.i4/=74.or.i5/=75) print *,"fail"
!$omp endparallel
      do i=1,10
        ia(i)=ia(i)+i1
        if (i.le.5) ja(i)=ja(i)+i5
      enddo
!$    if (.true.) then
!$      if (any(ia/=(/52,53,54,55,56,57,58,59,60,61/))) print *,"fail"
!$      if (any(ja/=(/56,57,58,59,60/))) print *,"fail"
!$      if (any(ka/=(/ 1, 4, 9,16,25,36,49,64,81,100/))) print *,"fail"
!$      if(i1/=51.or.i2/=52.or.i3/=53.or.i4/=54.or.i5/=55) print *,"fail"
!$    else
        if (any(ia/=(/82,83,84,85,86,87,88,89,90,91/))) print *,"fail"
        if (any(ja/=(/77,79,81,83,85/))) print *,"fail"
        if (any(ka/=(/10,11,12,13,14,15,16,17,18,19/))) print *,"fail"
        if(i1/=71.or.i2/=72.or.i3/=73.or.i4/=74.or.i5/=75) print *,"fail"
!$    endif
      print *,'pass'
      end
