   block data
      common /com_a/ ia1,ia2,ia3,ia4
      common /com_b/ ib1,ib2,ib3,ib4
      data ia1,ia2,ia3,ia4 /11,12,13,14/
      data ib1,ib2,ib3,ib4 /51,52,53,54/
   end

   program ompds0066
      common /com_a/ ia1,ia2,ia3,ia4
      common /com_b/ ib1,ib2,ib3,ib4
!$omp parallel private(/com_a/,ib3,ib4)
      ia1=-11
      ia2=-12
      ia3=-13
      ia4=-14
      ib3=-53
      ib4=-54
      if(ia1/=-11.or.ia2/=-12.or.ia3/=-13.or.ia4/=-14) print *,"fail"
      if(ib1/= 51.or.ib2/= 52.or.ib3/=-53.or.ib4/=-54) print *,"fail"
      call sub1 (ia1,ia2,ia3,ia4,ib1,ib2,ib3,ib4)
!$omp end parallel
!$    if (.true.) then
!$      if(ia1/= 11.or.ia2/= 12.or.ia3/= 13.or.ia4/= 14) print *,"fail"
!$      if(ib1/= 41.or.ib2/= 42.or.ib3/= 53.or.ib4/= 54) print *,"fail"
!$    else
        if(ia1/=-11.or.ia2/=-12.or.ia3/=-13.or.ia4/=-14) print *,"fail"
        if(ib1/= 41.or.ib2/= 42.or.ib3/=-53.or.ib4/=-54) print *,"fail"
!$    endif
      print *,'pass'
   end

   subroutine sub1(i1,i2,i3,i4,i5,i6,i7,i8)
      if(i1/=-11.or.i2/=-12.or.i3/=-13.or.i4/=-14) print *,"fail"
      if(i5/= 51.or.i6/= 52.or.i7/=-53.or.i8/=-54) print *,"fail"
!$omp barrier
!$omp single
      i5=i5-10
      i6=i6-10
!$omp end single
   end
