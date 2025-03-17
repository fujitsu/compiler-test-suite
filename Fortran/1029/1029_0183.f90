     call sub()
     print *,'pass'
  end

  subroutine sub()
    integer(8),allocatable::a(:,:),b(:,:)

      n=0
      allocate(a(3,2),b(3,2))
      a=reshape((/1,2,3,4,5,6/),(/3,2/))
      b=reshape((/1,2,3,4,5,6/),(/3,2/))

      if ( any( a<reshape((/0,0,0,0,0,6/),(/3,2/)) ) .and. &
           all( b<reshape((/0,0,0,0,0,6/),(/3,2/)) ) ) then
        write(6,*) "NG"
      elseif ( any(a==reshape((/0,1,2,3,4,5/),(/3,2/))) .and. &
               all(b==reshape((/1,2,3,4,5,5/),(/3,2/))) ) then
        write(6,*) "NG"
      elseif ( any(a>reshape((/1,2,3,4,5,5/),(/3,2/))) .and. &
               all(b>reshape((/0,1,2,3,4,5/),(/3,2/))) ) then
        n=n+1
        if ( a(1,1).ge.b(1,1) .and. a(2,1).le.b(2,1) .and. a(3,1).eq.b(3,1) &
              .and. &
             a(1,2).ge.b(1,2) .and. a(2,2).le.b(2,2) .and. a(3,2).eq.b(3,2) &
           ) then
          n=n+1
        else
          write(6,*) "NG"
        endif
      endif

      if ( any(a/=b) .or. n/=2) write(6,*) "NG"
  end subroutine
