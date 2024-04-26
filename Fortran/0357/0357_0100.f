      integer*1,parameter::pa=5
      type int_data
        sequence
        integer   (kind=8),dimension(pa) ::i8
        integer   (kind=1),dimension(pa) ::i1
        integer   (kind=4),dimension(pa) ::i4
        integer   (kind=2),dimension(pa) ::i2
        character (len=10) ch(pa)
      end type
      type (int_data),dimension(:),target,allocatable ::id
      type (int_data),pointer,dimension(:)::id1,id2
c
      allocate(id(pa*2))
      id1=>id
      do i=1,pa*2
        id1(i)%i1 = (/(i,i=1,pa)/)*i
        id1(i)%i2 = (/(i,i=1,pa)/)*i
        id1(i)%i4 = (/(i,i=1,pa)/)*i
        id1(i)%i8 = (/(i,i=1,pa)/)*i
        id1(i)%ch = 'abc -abc- '
      end do
      id2 => id1

      do i=1,pa
        where ( id2(:)%i1(i) > (id(:)%i1(i)/2)+(-i)+(id(:)%i1(i)/2) )
     +    id2(:)%i1(i)=id1(:)%i1(i)-id1(:)%i1(i)
        where ( id2(:)%i2(i) == id2(:)%i2(i) )
     +    id2(:)%i2(i)=id1(:)%i2(i)-id1(:)%i2(i)
        where ( id2(:)%i4(i) == id2(:)%i4(i) )
     +    id2(:)%i4(i)=id1(:)%i4(i)-id1(:)%i4(i)
        where ( id2(:)%i8(i) == id2(:)%i8(i) )
     +    id2(:)%i8(i)=id1(:)%i8(i)-id1(:)%i8(i)
        where ( id(:)%ch(i) == 'abc -abc- ')
     +    id2(:)%ch(i)='          '
      end do
      print *,id2
      end
