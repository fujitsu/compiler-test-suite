   block data
      common /com_a/ ia(4)
      common /com_b/ ib(4)
      data ia /11,12,13,14/
      data ib /51,52,53,54/
   end

   program ompds0067
      common /com_a/ ia(4)
      common /com_b/ ib(4)
!$omp parallel private(/com_a/,ib)
      ia(1)=-11
      ia(2)=-12
      ia(3)=-13
      ia(4)=-14
      ib(1)=-51
      ib(2)=-52
      ib(3)=-53
      ib(4)=-54
      call sub1 (ia,ib)
      if(any(ia/=(/-21,-22,-13,-14/))) print *,"fail"
      if(any(ib/=(/-61,-62,-53,-54/))) print *,"fail"
!$omp end parallel
!$    if (.true.) then
!$      if(any(ia/=(/ 11, 12, 13, 14/))) print *,"fail"
!$      if(any(ib/=(/ 51, 52, 53, 54/))) print *,"fail"
!$    else
        if(any(ia/=(/-21,-22,-13,-14/))) print *,"fail"
        if(any(ib/=(/-61,-62,-53,-54/))) print *,"fail"
!$    endif
      print *,'pass'
   end

   subroutine sub1(ia,ib)
      integer ia(4),ib(4)
      ia(1)=ia(1)-10
      ia(2)=ia(2)-10
      ib(1)=ib(1)-10
      ib(2)=ib(2)-10
   end
