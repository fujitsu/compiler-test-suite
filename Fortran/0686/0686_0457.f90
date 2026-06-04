     program ompv2
      interface
        subroutine sub1(i1,i2,i4,i8,n)
          integer(2),intent(in)::n
          integer(1),dimension(:)::i1
          integer(2),dimension(:)::i2
          integer(4),dimension(:)::i4
          integer(8),dimension(:)::i8
        end subroutine
        subroutine sub2(i1,i2,i4,i8,n)
          integer(2),intent(in)::n
          integer(1),dimension(:)::i1
          integer(2),dimension(:)::i2
          integer(4),dimension(:)::i4
          integer(8),dimension(:)::i8
        end subroutine
        subroutine sub3(i11,i12,i21,i22,i41,i42,i81,i82)
          integer(1),dimension(:)::i11,i12
          integer(2),dimension(:)::i21,i22
          integer(4),dimension(:)::i41,i42
          integer(8),dimension(:)::i81,i82
        end subroutine
      end interface
      integer(2),parameter::n=17
      integer(1),dimension(n)::i11,i12
      integer(2),dimension(n)::i21,i22
      integer(4),dimension(n)::i41,i42
      integer(8),dimension(n)::i81,i82

      call sub1(i11,i21,i41,i81,n)

      call sub2(i12,i22,i42,i82,n)

      call sub3(i11,i12,i21,i22,i41,i42,i81,i82)

      print *,'pass'
    end program

    subroutine sub1(i1,i2,i4,i8,n)
      integer(2),intent(in)::n
      integer(1),dimension(:)::i1
      integer(2),dimension(:)::i2
      integer(4),dimension(:)::i4
      integer(8),dimension(:)::i8
!$omp parallel
!$omp workshare
      i1(:)=(/(j,j=1,n)/)
      i2(1:n:2)=1_2
      i2(2:n-1:2)=2_2
      i4(n:1:-2)=1_4
      i4(n-1:2:-2)=2_4
      i8(i1(1):i1(n):i1(2))=1_8
      i8(i1(2):i1(n-1):i1(2))=2_8
!$omp end workshare
!$omp end parallel
    end subroutine

    subroutine sub2(i1,i2,i4,i8,n)
      integer(2),intent(in)::n
      integer(1),dimension(:)::i1
      integer(2),dimension(:)::i2
      integer(4),dimension(:)::i4
      integer(8),dimension(:)::i8
      i1(:)=(/(j,j=1,n)/)
      i2(1:n:2)=1_2
      i2(2:n-1:2)=2_2
      i4(n:1:-2)=1_4
      i4(n-1:2:-2)=2_4
      i8(i1(1):i1(n):i1(2))=1_8
      i8(i1(2):i1(n-1):i1(2))=2_8
    end subroutine

    subroutine sub3(i11,i12,i21,i22,i41,i42,i81,i82)
      integer(1),dimension(:)::i11,i12
      integer(2),dimension(:)::i21,i22
      integer(4),dimension(:)::i41,i42
      integer(8),dimension(:)::i81,i82
      integer(1),dimension(4,2)::mm
      logical(1),dimension(5,2)::ll
!$omp parallel
!$omp workshare
      ll(1,1)=any(i11/=i12)
      ll(2,1)=any(i21/=i22)
      ll(3,1)=any(i41/=i42)
      ll(4,1)=any(i81/=i82)
      ll(5,1)=any(i81/=i82).or.any(i41/=i42).or.any(i21/=i22).or.any(i11/=i12)
      ll(1,2)=all(i11-i12==0)
      ll(2,2)=all(i21-i22==0)
      ll(3,2)=all(i41-i42==0)
      ll(4,2)=all(i81-i82==0)
      ll(5,2)=all(i81-i82==0).and.all(i41-i42==0).and. &
              all(i21-i22==0).and.all(i11-i12==0)
      mm(1,1)=maxval(i11-i12)
      mm(2,1)=maxval(i21-i22)
      mm(3,1)=maxval(i41-i42)
      mm(4,1)=maxval(i81-i82)
      mm(1,2)=minval(i11-i12)
      mm(2,2)=minval(i21-i22)
      mm(3,2)=minval(i41-i42)
      mm(4,2)=minval(i81-i82)
!$omp end workshare
!$omp end parallel
      if (any(ll(:,1))) print *,"fail"
      if (.not.all(ll(:,2))) print *,"fail"
      if (any(mm/=0)) print *,"fail"
    end subroutine sub3
