      module mod
      integer*1,parameter::pa=5
      type int_data
        integer   (kind=8),dimension(pa) ::i8
        integer   (kind=1),dimension(pa) ::i1
        integer   (kind=4),dimension(pa) ::i4
        integer   (kind=2),dimension(pa) ::i2
        character (len=10) ch(pa)
      end type
      type (int_data),dimension(pa*2) ::id1
      end module
c
      subroutine sub
      use mod
      type (int_data),dimension(pa*2),save ::id2
      do i=1,pa*2
        id1(i)%i1 = (/(i,i=1,pa)/)*i
        id1(i)%i2 = (/(i,i=1,pa)/)*i
        id1(i)%i4 = (/(i,i=1,pa)/)*i
        id1(i)%i8 = (/(i,i=1,pa)/)*i
        id1(i)%ch = 'abc -abc- '
      end do
      id2 = id1
      return
      entry print_data
      print *,id2
      return
      entry check_and_store
      do j=1,pa*2
      do i=1,pa
        where ( id1(:)%i1(i) == id2(:)%i1(i) )
     +    id2(:)%i1(i)=id2(:)%i1(i)-id2(:)%i1(i)
        where ( id1(:)%i2(i) == id2(:)%i2(i) )
     +    id2(:)%i2(i)=id2(:)%i2(i)-id2(:)%i2(i)
        where ( id1(:)%i4(i) == id2(:)%i4(i) )
     +    id2(:)%i4(i)=id2(:)%i4(i)-id2(:)%i4(i)
        where ( id1(:)%i8(i) == id2(:)%i8(i) )
     +    id2(:)%i8(i)=id2(:)%i8(i)-id2(:)%i8(i)
        where ( id1(:)%ch(i) == 'abc -abc- ')
     +    id2(:)%ch(i)='          '
      end do
      end do
      return
      end subroutine
c
      call sub
      call check_and_store
      call print_data
      end
