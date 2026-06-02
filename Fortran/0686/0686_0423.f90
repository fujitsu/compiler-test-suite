      module mod
        integer(4),dimension(20,3)::a
        integer(4),dimension(3)   ::maxl,minl
      end module

      use mod
      a=reshape((/3,5,7,9,11,13,15,17,19,1,2,20,18,16,14,12,10,8,6,4,   &
                  3,5,7,9,11,13,15,17,19,20,2,1,18,16,14,12,10,8,6,4,   &
                  3,5,7,9,11,13,15,17,19,2,1,18,20,16,14,12,10,8,6,4/), &
                (/20,3/))
      minv1=huge(minv1)
      minv2=huge(minv2)
      call sub1()
      if (any(maxl/=(/12,10,13/))) print *,"fail"
      if (any(minl/=(/10,12,11/))) print *,"fail"
      print *,'pass'
      end

      subroutine sub1()
      use mod
!$omp parallel
!$omp workshare
      forall (i=1:3:1)
        maxl(i) = maxloc(a(:,i),1)
        minl(i) = minloc(a(:,i),1)
      end forall
!$omp end workshare
!$omp end parallel
      end
