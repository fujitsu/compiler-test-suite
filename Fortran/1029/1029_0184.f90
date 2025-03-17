     call sub0()
     print *,'pass'
  end

  subroutine sub0()
    integer(8),allocatable::a(:,:),b(:,:)
    interface
      subroutine sub1(a,b,n1,n2)
        integer(8),allocatable::a(:,:),b(:,:)
      end subroutine
      subroutine sub2(a,b,n1,n2)
        integer(8),allocatable::a(:,:),b(:,:)
      end subroutine
    end interface
      n1=3;n2=2
      call sub1(a,b,n1,n2)
      call sub2(a,b,n1,n2)
  end subroutine

  subroutine sub1(a,b,n1,n2)
    integer(8),allocatable::a(:,:),b(:,:)
      allocate(a(n1,n2),b(n1,n2))
      a=reshape((/(i,i=1,n1*n2)/),(/n1,n2/))
      b=reshape((/(i,i=1,n1*n2)/),(/n1,n2/))
  end subroutine

  subroutine sub2(a,b,n1,n2)
    integer(8),allocatable::a(:,:),b(:,:)
      n=0
      if ( any( a<reshape((/0,0,0,0,0,6/),(/n1,n2/)) ) .and. &
           all( b<reshape((/0,0,0,0,0,6/),(/n1,n2/)) ) ) then
        write(6,*) "NG"
      elseif ( any(a==reshape((/0,1,2,3,4,5/),(/n1,n2/))) .and. &
               all(b==reshape((/1,2,3,4,5,5/),(/n1,n2/))) ) then
        write(6,*) "NG"
      elseif ( any(a>reshape((/1,2,3,4,5,5/),(/n1,n2/))) .and. &
               all(b>reshape((/0,1,2,3,4,5/),(/n1,n2/))) ) then
        n=n+1
        if ( a(1,1).ge.b(1,1) .and. a(2,1).le.b(2,1) .and. a(3,1).eq.b(3,1) &
              .and. &
             a(1,2).ge.b(1,2) .and. a(2,2).le.b(2,2) .and. a(3,2).eq.b(3,2) &
           ) then
          n=n+1
        else
          write(6,*) "NG"
        endif
        if ( ( a(1,1).gt.b(1,1) .and. a(2,1).lt.b(2,1) .and. a(3,1).ne.b(3,1) )&
              .or. &
             ( a(1,2).ge.b(1,2) .and. a(2,2).le.b(2,2) .and. a(3,2).eq.b(3,2) )&
           ) then
          n=n+1
        else
          write(6,*) "NG"
        endif
      endif
      if ( any(a/=b) .or. n/=3 ) write(6,*) "NG"
  end subroutine
