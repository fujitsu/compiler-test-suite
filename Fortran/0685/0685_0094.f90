    program ompds079
      call sub()
      print *,'pass'
    end program

    subroutine sub()
      common /com1/ i1,j1
      common /com2/ i2,j2
      common /com3/ i3,j3
!$omp parallel firstprivate(k1,/com1/,k2,/com2/,k3,/com3/)
      i1=i1+1 ; j1=j1+1
      i2=i2+1 ; j2=j2+1
      i3=i3+1 ; j3=j3+1
!$omp parallel firstprivate(/com1/,/com2/,k1,/com3/,k2,k3)
      i1=i1+1 ; j1=j1+1
      i2=i2+1 ; j2=j2+1
      i3=i3+1 ; j3=j3+1
!$omp parallel firstprivate(/com1/,k1,k2,k3,/com3/,/com2/)
      i1=i1+1 ; j1=j1+1
      i2=i2+1 ; j2=j2+1
      i3=i3+1 ; j3=j3+1
      if (i1/=14.or.j1/=15) print *,"fail"
      if (i2/=24.or.j2/=25) print *,"fail"
      if (i3/=34.or.j3/=35) print *,"fail"
!$omp end parallel
      if (i1/=13.or.j1/=14) print *,"fail"
      if (i2/=23.or.j2/=24) print *,"fail"
      if (i3/=33.or.j3/=34) print *,"fail"
!$omp end parallel
      if (i1/=12.or.j1/=13) print *,"fail"
      if (i2/=22.or.j2/=23) print *,"fail"
      if (i3/=32.or.j3/=33) print *,"fail"
!$omp end parallel
      if (i1/=11.or.j1/=12) print *,"fail"
      if (i2/=21.or.j2/=22) print *,"fail"
      if (i3/=31.or.j3/=32) print *,"fail"
    end subroutine

    block data
      common /com1/ i1,j1
      common /com2/ i2,j2
      common /com3/ i3,j3
      data i1,j1 /11,12/
      data i2,j2 /21,22/
      data i3,j3 /31,32/
    end block data
