     type zz
       integer(2),allocatable,dimension(:)::zi
     end type
      type(zz)::x
      integer(4)::i4=0,ii=0
      real(4),allocatable,dimension(:)::ia

      allocate(ia(2),x%zi(2))
      ia=0
      x%zi=0
!$omp parallel do
      do i=1,10
!$omp atomic
        i4=i4+1
!$omp atomic
        ii=ii+1
!$omp atomic
        ia(1)=ia(1)+1
!$omp atomic
        ia(2)=ia(2)+i
!$omp atomic
        x%zi(1)=x%zi(1)+1
!$omp atomic
        x%zi(2)=x%zi(2)+i
      enddo

      if (i4/=10) print *,"fail"
      if (ii/=10) print *,"fail"
      if (any(ia/=(/10,55/))) print *,"fail"
      if (any(x%zi/=(/10,55/))) print *,"fail"
      print *,'pass'
     end
