      type z
        integer,allocatable::za1(:)
        integer,allocatable::za2(:)
      end type
      type y
        type(z)        ::yp
        type(z)        ::yy
      end type
      type x1
        type(y),pointer::x1p
      end type
      type x2
        type(y),pointer::x2p
      end type
      type x3
        type(y),pointer::x3p
      end type
      type(x1)::a1
      type(x2)::a2
      type(x3)::a3
      integer(8)::i21,i22,i23,i24
      integer(8)::i31,i32,i33,i34

      allocate(a1%x1p,a2%x2p,a3%x3p)

      allocate(a2%x2p%yp%za1(3)) ; a2%x2p%yp%za1=(/-1,-2,-3/)
      allocate(a2%x2p%yp%za2(5)) ; a2%x2p%yp%za2=(/-5,-4,-3,-2,-1/)
      allocate(a2%x2p%yy%za1(7)) ; a2%x2p%yy%za1=(/1,2,3,4,5,6,7/)
      allocate(a2%x2p%yy%za2(9)) ; a2%x2p%yy%za2=(/9,8,7,6,5,4,3,2,1/)

      allocate(a3%x3p%yp%za1(1)) ; a3%x3p%yp%za1=-1
      allocate(a3%x3p%yp%za2(2)) ; a3%x3p%yp%za2=-2
      allocate(a3%x3p%yy%za1(1)) ; a3%x3p%yy%za1=1
      allocate(a3%x3p%yy%za2(2)) ; a3%x3p%yy%za2=2

      i21=loc(a2%x2p%yp%za1)
      i22=loc(a2%x2p%yp%za2)
      i23=loc(a2%x2p%yy%za1)
      i24=loc(a2%x2p%yy%za2)
      i31=loc(a3%x3p%yp%za1)
      i32=loc(a3%x3p%yp%za2)
      i33=loc(a3%x3p%yy%za1)
      i34=loc(a3%x3p%yy%za2)

      a1%x1p=a2%x2p

      if (i21==loc(a1%x1p%yp%za1)) print *,'error 1'
      if (i22==loc(a1%x1p%yp%za2)) print *,'error 2'
      if (i23==loc(a1%x1p%yy%za1)) print *,'error 3'
      if (i24==loc(a1%x1p%yy%za2)) print *,'error 4'

      a2%x2p=a3%x3p

      if (i31==loc(a2%x2p%yp%za1)) print *,'error 5'
      if (i32==loc(a2%x2p%yp%za2)) print *,'error 6'
      if (i33==loc(a2%x2p%yy%za1)) print *,'error 7'
      if (i34==loc(a2%x2p%yy%za2)) print *,'error 8'

      deallocate(a3%x3p%yp%za1)
      deallocate(a3%x3p%yp%za2)
      deallocate(a3%x3p%yy%za1)
      deallocate(a3%x3p%yy%za2)

      if (any(a1%x1p%yp%za1/=(/-1,-2,-3/)))          print *,'error a'
      if (any(a1%x1p%yp%za2/=(/-5,-4,-3,-2,-1/)))    print *,'error b'
      if (any(a1%x1p%yy%za1/=(/1,2,3,4,5,6,7/)))     print *,'error c'
      if (any(a1%x1p%yy%za2/=(/9,8,7,6,5,4,3,2,1/))) print *,'error d'

      if (any(a2%x2p%yp%za1/=(/-1/)))     print *,'error e'
      if (any(a2%x2p%yp%za2/=(/-2,-2/)))  print *,'error f'
      if (any(a2%x2p%yy%za1/=(/1/)))      print *,'error g'
      if (any(a2%x2p%yy%za2/=(/2,2/)))    print *,'error h'

      print *,'pass'
      end
