    program ompv2
      integer(4),dimension(3,10)::a=0,b=0
      call sub()
      if (any(pack(a,mask=.true.)/=55)) print *,"fail"
      if (any(pack(b,mask=.true.)/=10)) print *,"fail"
      print *,'pass'
    contains
      subroutine sub()
!$omp parallel do reduction(+:a,b)
      do i=1,10
        a(:,:)=a(:,:)+i
        b(:,:)=b(:,:)+1
      enddo
!$omp end parallel do
      end subroutine
    end program
