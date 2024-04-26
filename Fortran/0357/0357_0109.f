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
        call check_and_store
        do i=1,pa
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
      integer*1,parameter::pa=5
!
      i = 1
    1 if ( i > pa*2 ) goto 999
      do j1=1,pa*2
        where ( id1(i)%i1 == id2(i)%i1 )
          id2(i)%i1=id2(i)%i1-id2(i)%i1
          id1(i)%i1=id2(i)%i1-id2(i)%i1
        elsewhere
          id2(i)%i1=-1
        end where
      do j2=1,pa*2
      goto 2
      end do
    5   where ( id1(i)%i2 == id2(i)%i2 )
          id2(i)%i2=id2(i)%i2-id2(i)%i2
          id1(i)%i2=id2(i)%i2-id2(i)%i2
        elsewhere
          id2(i)%i2=-2
        end where
      i=i+1
      do j3=1,pa*2
      goto 1
      end do
    4   where ( id1(i)%i4 == id2(i)%i4 )
          id2(i)%i4=id2(i)%i4-id2(i)%i4
          id1(i)%i4=id2(i)%i4-id2(i)%i4
        elsewhere
          id2(i)%i4=-4
        end where
      do j4=1,pa*2
      goto 5
      end do
    3   where ( id1(i)%i8 == id2(i)%i8 )
          id2(i)%i8=id2(i)%i8-id2(i)%i8
          id1(i)%i8=id2(i)%i8-id2(i)%i8
        elsewhere
          id2(i)%i8=-8
        end where
      do j5=1,pa*2
      goto 4
      end do
    2   where ( id1(i)%ch == 'abc -abc- ')
     +    id2(i)%ch='          '
      goto 3
      end do
 999  return
      end subroutine check_and_store
      end subroutine sub_1
!
      call sub_1
      end
