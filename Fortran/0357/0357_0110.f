      subroutine sub_1
      integer*1,parameter::pa=5
      type int_data
        integer   (kind=8),dimension(pa) ::i8
        integer   (kind=1),dimension(pa) ::i1
        character (len=10) ch(pa)
        integer   (kind=4),dimension(pa) ::i4
        integer   (kind=2),dimension(pa) ::i2
      end type
      type (int_data),dimension(pa*2) ::id1,id2
      do i=1,pa
        id1(:)%i1(i) = (/(i,i=1,pa*2)/)*i
        id1(:)%i2(i) = (/(i,i=1,pa*2)/)*i
        id1(:)%i4(i) = (/(i,i=1,pa*2)/)*i
        id1(:)%i8(i) = (/(i,i=1,pa*2)/)*i
        id1(:)%ch(i) = 'abc -abc- '
      end do
      id2 = id1
      do j=1,pa*2
        i=1
        call check_and_store
        do ip=1,pa
          i=1
          call check_and_store
        end do
      end do
      call print_data
      return
      contains
c
      subroutine print_data
      print *,id2
      return
      end subroutine print_data
!
      subroutine check_and_store
    1 if ( i > pa*2 ) goto 999
      do j1=1,pa*2
        where ( id1(i)%i1 == id2(i)%i1
     +     .and.id1(i)%i2 == id2(i)%i2
     +     .and.id1(i)%i4 == id2(i)%i4
     +     .and.id1(i)%i8 == id2(i)%i8
     +     .and.id2(i)%i1 == id1(i)%i1
     +     .and.id2(i)%i2 == id1(i)%i2
     +     .and.id2(i)%i4 == id1(i)%i4
     +     .and.id2(i)%i8 == id1(i)%i8 )
          id2(i)%i1=id2(i)%i1-id2(i)%i1
          id1(i)%i1=id2(i)%i1-id2(i)%i1
          id2(i)%i2=id2(i)%i2-id2(i)%i2
          id1(i)%i2=id2(i)%i2-id2(i)%i2
          id2(i)%i4=id2(i)%i4-id2(i)%i4
          id1(i)%i4=id2(i)%i4-id2(i)%i4
          id2(i)%i8=id2(i)%i8-id2(i)%i8
          id1(i)%i8=id2(i)%i8-id2(i)%i8
          id2(i)%ch='          '
        elsewhere
          id2(i)%i1=-1
          id2(i)%i2=-2
          id2(i)%i4=-4
          id2(i)%i8=-8
          id2(i)%ch='xxxxxxxxxx'
          id1(i)%i1=-1
          id1(i)%i2=-2
          id1(i)%i4=-4
          id1(i)%i8=-8
          id1(i)%ch='xxxxxxxxxx'
        end where
      end do
      i=i+1
      goto 1
 999  return
      end subroutine check_and_store
      end subroutine sub_1
!
      call sub_1
      end
