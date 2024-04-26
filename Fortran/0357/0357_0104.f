      integer*1,parameter::pa=5
      type int_data
        integer   (kind=8),dimension(pa) ::i8
        integer   (kind=1),dimension(pa) ::i1
        integer   (kind=4),dimension(pa) ::i4
        integer   (kind=2),dimension(pa) ::i2
        character (len=10) ch(pa)
      end type
      type (int_data),dimension(pa*2) ::id1,id2
c
      do i=1,pa*2
        id1(i)%i1 = (/(i,i=1,pa)/)*i
        id1(i)%i2 = (/(i,i=1,pa)/)*i
        id1(i)%i4 = (/(i,i=1,pa)/)*i
        id1(i)%i8 = (/(i,i=1,pa)/)*i
        id1(i)%ch = 'abc -abc- '
      end do
      id2 = id1
      do i=1,pa
      do j=1,pa*2
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
      print *,id2
      end
