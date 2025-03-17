      type z
        integer,allocatable::za1(:)
        integer,pointer    ::zp1(:)
        integer,allocatable::za2(:)
      end type
      type y
        type(z),pointer::yp(:)
      end type
      type(y)        ::a1
      type(y)        ::b1
      type(z),pointer::a2(:)
      integer(4),target::tt(3,3)=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/))
      logical(8)::ll(3,3)

      allocate(a1%yp(3),b1%yp(3),a2(3))

      forall (i=1:3:1)
        a2(i)=z((/(j,j=1,i*3)/),tt(:,i),(/(k,k=1,i*2)/))
        a1%yp(i)=a2(i)
      end forall

      forall (i=1:3:1)
        ll(1,i) = loc(a1%yp(i)%za1).eq.loc(a2(i)%za1)
        ll(2,i) = loc(a1%yp(i)%zp1).ne.loc(a2(i)%zp1)
        ll(3,i) = loc(a1%yp(i)%za2).eq.loc(a2(i)%za2)
      end forall

      if (any(ll)) print *,'error 0'
      if (any(a1%yp(1)%za1/=(/1,2,3/))) print *,'error 1'
      if (any(a1%yp(1)%zp1/=(/1,2,3/))) print *,'error 2'
      if (any(a1%yp(1)%za2/=(/1,2/)))   print *,'error 3'
      if (any(a1%yp(2)%za1/=(/1,2,3,4,5,6/))) print *,'error 4'
      if (any(a1%yp(2)%zp1/=(/4,5,6/)))       print *,'error 5'
      if (any(a1%yp(2)%za2/=(/1,2,3,4/)))     print *,'error 6'
      if (any(a1%yp(3)%za1/=(/1,2,3,4,5,6,7,8,9/))) print *,'error 7'
      if (any(a1%yp(3)%zp1/=(/7,8,9/)))             print *,'error 8'
      if (any(a1%yp(3)%za2/=(/1,2,3,4,5,6/)))       print *,'error 9'

      do i=1,3
        deallocate(a2(i)%za1)
        deallocate(a2(i)%za2)
      enddo

      forall (i=3:1:-1)
        b1%yp(i)=a1%yp(i)
      end forall

      forall (i=1:3:1)
        ll(1,i) = loc(a1%yp(i)%za1).eq.loc(b1%yp(i)%za1)
        ll(2,i) = loc(a1%yp(i)%zp1).ne.loc(b1%yp(i)%zp1)
        ll(3,i) = loc(a1%yp(i)%za2).eq.loc(b1%yp(i)%za2)
      end forall

      do i=1,3
        deallocate(a1%yp(i)%za1)
        deallocate(a1%yp(i)%za2)
      enddo

      if (any(ll)) print *,'error 10'
      if (any(b1%yp(1)%za1/=(/1,2,3/))) print *,'error 11'
      if (any(b1%yp(1)%zp1/=(/1,2,3/))) print *,'error 12'
      if (any(b1%yp(1)%za2/=(/1,2/)))   print *,'error 13'
      if (any(b1%yp(2)%za1/=(/1,2,3,4,5,6/))) print *,'error 14'
      if (any(b1%yp(2)%zp1/=(/4,5,6/)))       print *,'error 15'
      if (any(b1%yp(2)%za2/=(/1,2,3,4/)))     print *,'error 16'
      if (any(b1%yp(3)%za1/=(/1,2,3,4,5,6,7,8,9/))) print *,'error 17'
      if (any(b1%yp(3)%zp1/=(/7,8,9/)))             print *,'error 18'
      if (any(b1%yp(3)%za2/=(/1,2,3,4,5,6/)))       print *,'error 19'

      forall (i=1:3:1)
        a2(i)=b1%yp(i)
      endforall

      forall (i=1:3:1)
        ll(1,i) = loc(a2(i)%za1).eq.loc(b1%yp(i)%za1)
        ll(2,i) = loc(a2(i)%zp1).ne.loc(b1%yp(i)%zp1)
        ll(3,i) = loc(a2(i)%za2).eq.loc(b1%yp(i)%za2)
      end forall

      do i=1,3
        deallocate(b1%yp(i)%za1)
        deallocate(b1%yp(i)%za2)
      enddo

      if (any(ll)) print *,'error 20'
      if (any(a2(1)%za1/=(/1,2,3/))) print *,'error 21'
      if (any(a2(1)%zp1/=(/1,2,3/))) print *,'error 22'
      if (any(a2(1)%za2/=(/1,2/)))   print *,'error 23'
      if (any(a2(2)%za1/=(/1,2,3,4,5,6/))) print *,'error 24'
      if (any(a2(2)%zp1/=(/4,5,6/)))       print *,'error 25'
      if (any(a2(2)%za2/=(/1,2,3,4/)))     print *,'error 26'
      if (any(a2(3)%za1/=(/1,2,3,4,5,6,7,8,9/))) print *,'error 27'
      if (any(a2(3)%zp1/=(/7,8,9/)))             print *,'error 28'
      if (any(a2(3)%za2/=(/1,2,3,4,5,6/)))       print *,'error 29'

      forall (i=1:3:1)
        a2(4-i)=a2(i)
      endforall

      if (any(a2(3)%za1/=(/1,2,3/))) print *,'error 31'
      if (any(a2(3)%zp1/=(/1,2,3/))) print *,'error 32'
      if (any(a2(3)%za2/=(/1,2/)))   print *,'error 33'
      if (any(a2(2)%za1/=(/1,2,3,4,5,6/))) print *,'error 34'
      if (any(a2(2)%zp1/=(/4,5,6/)))       print *,'error 35'
      if (any(a2(2)%za2/=(/1,2,3,4/)))     print *,'error 36',a2(2)%za2
      if (any(a2(1)%za1/=(/1,2,3,4,5,6,7,8,9/))) print *,'error 37',a2(1)%za1
      if (any(a2(1)%zp1/=(/7,8,9/)))             print *,'error 38'
      if (any(a2(1)%za2/=(/1,2,3,4,5,6/)))       print *,'error 39'

      print *,'pass'
      end
