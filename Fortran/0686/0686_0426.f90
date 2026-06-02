      module mod
        integer(4),dimension(20,3)::a
        integer(4),dimension(3)   ::maxl,minl
      end module

      use mod
      maxl=0
      minl=0
      a=reshape((/3,5,7,9,11,13,15,17,19,1,2,20,18,16,14,12,10,8,6,4,   &
                  3,5,7,9,11,13,15,17,19,20,2,1,18,16,14,12,10,8,6,4,   &
                  3,5,7,9,11,13,15,17,19,2,1,18,20,16,14,12,10,8,6,4/), &
                (/20,3/))
      call sub1()
      if (any(maxl/=(/12, 0,13/))) print *,"fail"
      if (any(minl/=(/10, 0,11/))) print *,"fail"
      print *,'pass'
      end

      subroutine sub1()
      use mod
!$omp parallel
!$omp workshare
      forall(i=1:1:1)
      where ((/.true.,.false.,.true./))
        maxl(:) = maxloc(a(:,:),1)
        minl(:) = minloc(a(:,:),1)
      end where
      end forall
!$omp end workshare
!$omp end parallel
      end
