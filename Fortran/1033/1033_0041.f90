      type z
        integer,allocatable::za1(:)
        integer,pointer    ::zp1(:)
        integer,allocatable::za2(:)
        integer,pointer    ::zp2(:)
      end type
      type y
        type(z),pointer::yp
      end type
      type(y),allocatable,dimension(:)::a1
      type(y),allocatable,dimension(:)::a2
      type(y),allocatable,dimension(:)::a3
      integer(8)::i21,i22,i23,i24
      integer(8)::i31,i32,i33,i34

      allocate(a1(1),a2(1),a3(1))
      allocate(a1(1)%yp,a2(1)%yp,a3(1)%yp)
      allocate(a2(1)%yp%za1(2),a2(1)%yp%zp1(3),a2(1)%yp%za2(4),a2(1)%yp%zp2(5))
      a2(1)%yp%za1=(/2,3/)
      a2(1)%yp%zp1=(/3,4,5/)
      a2(1)%yp%za2=(/4,5,6,7/)
      a2(1)%yp%zp2=(/5,6,7,8,9/)
      allocate(a3(1)%yp%za1(1),a3(1)%yp%zp1(2),a3(1)%yp%za2(3),a3(1)%yp%zp2(4))
      a3(1)%yp%za1=(/1/)
      a3(1)%yp%zp1=(/2,3/)
      a3(1)%yp%za2=(/3,4,5/)
      a3(1)%yp%zp2=(/4,5,6,7/)

      i21=loc(a2(1)%yp%za1)
      i22=loc(a2(1)%yp%zp1)
      i23=loc(a2(1)%yp%za2)
      i24=loc(a2(1)%yp%zp2)

      i31=loc(a3(1)%yp%za1)
      i32=loc(a3(1)%yp%zp1)
      i33=loc(a3(1)%yp%za2)
      i34=loc(a3(1)%yp%zp2)

      a1(1)%yp=a2(1)%yp

      a2(1)%yp=a3(1)%yp

      if (i21==loc(a1(1)%yp%za1)) print *,'error 1'
      if (i22/=loc(a1(1)%yp%zp1)) print *,'error 2'
      if (i23==loc(a1(1)%yp%za2)) print *,'error 3'
      if (i24/=loc(a1(1)%yp%zp2)) print *,'error 4'

      if (i31==loc(a2(1)%yp%za1)) print *,'error 5'
      if (i32/=loc(a2(1)%yp%zp1)) print *,'error 6'
      if (i33==loc(a2(1)%yp%za2)) print *,'error 7'
      if (i34/=loc(a2(1)%yp%zp2)) print *,'error 8'

      if (any(a1(1)%yp%za1/=(/2,3/)))        print *,'error a'
      if (any(a1(1)%yp%zp1/=(/3,4,5/)))      print *,'error b'
      if (any(a1(1)%yp%za2/=(/4,5,6,7/)))    print *,'error c'
      if (any(a1(1)%yp%zp2/=(/5,6,7,8,9/)))  print *,'error d'

      if (any(a2(1)%yp%za1/=(/1/)))          print *,'error e'
      if (any(a2(1)%yp%zp1/=(/2,3/)))        print *,'error f'
      if (any(a2(1)%yp%za2/=(/3,4,5/)))      print *,'error g'
      if (any(a2(1)%yp%zp2/=(/4,5,6,7/)))    print *,'error h'

      deallocate(a3(1)%yp%za1)
      deallocate(a3(1)%yp%zp1)
      deallocate(a3(1)%yp%za2)
      deallocate(a3(1)%yp%zp2)

      print *,'pass'
      end
