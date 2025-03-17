interface
  subroutine sub1(i,n)
    integer,allocatable::i(:)
  end subroutine
  subroutine sub2(i,n)
    integer,allocatable::i(:)
  end subroutine
end interface

  integer,allocatable::i(:)
  allocate(i(0:12))
  n=0

  i=(/1,1,1,1,1,1,1,1,1,1,1,1,1/)
  call sub1(i,n)
  i=(/1,0,0,0,0,0,0,0,0,0,0,0,0/)
  call sub1(i,n)
  i=(/0,1,1,0,0,0,0,0,0,0,0,0,0/)
  call sub1(i,n)
  i=(/0,0,0,1,1,0,0,0,0,0,0,0,0/)
  call sub1(i,n)
  i=(/0,0,0,0,0,1,1,0,0,0,0,0,0/)
  call sub1(i,n)
  i=(/0,0,0,0,0,0,0,1,1,0,0,0,0/)
  call sub1(i,n)
  i=(/0,0,0,0,0,0,0,0,0,1,1,0,0/)
  call sub1(i,n)
  i=(/0,0,0,0,0,0,0,0,0,0,0,1,1/)
  call sub1(i,n)

  i=(/0,0,0,0,0,0,0,0,0,0,0,0,0/)
  call sub2(i,n)
  i=(/0,1,0,0,0,0,0,0,0,0,0,0,0/)
  call sub2(i,n)
  i=(/0,0,1,0,0,0,0,0,0,0,0,0,0/)
  call sub2(i,n)
  i=(/0,0,0,1,0,0,0,0,0,0,0,0,0/)
  call sub2(i,n)
  i=(/0,0,0,0,1,0,0,0,0,0,0,0,0/)
  call sub2(i,n)
  i=(/0,0,0,0,0,1,0,0,0,0,0,0,0/)
  call sub2(i,n)
  i=(/0,0,0,0,0,0,1,0,0,0,0,0,0/)
  call sub2(i,n)
  i=(/0,0,0,0,0,0,0,1,0,0,0,0,0/)
  call sub2(i,n)
  i=(/0,0,0,0,0,0,0,0,1,0,0,0,0/)
  call sub2(i,n)
  i=(/0,0,0,0,0,0,0,0,0,1,0,0,0/)
  call sub2(i,n)
  i=(/0,0,0,0,0,0,0,0,0,0,1,0,0/)
  call sub2(i,n)
  i=(/0,0,0,0,0,0,0,0,0,0,0,1,0/)
  call sub2(i,n)
  i=(/0,0,0,0,0,0,0,0,0,0,0,0,1/)
  call sub2(i,n)
  i=(/0,0,1,0,1,0,1,0,1,0,1,0,1/)
  call sub2(i,n)
  i=(/0,1,0,1,0,1,0,1,0,1,0,1,0/)
  call sub2(i,n)
  i=(/0,0,0,1,0,0,1,0,0,1,0,0,1/)
  call sub2(i,n)

 if (.not.(n==24)) write(6,*) "NG"
 print *,'pass'
end

subroutine sub1(i,n)
integer,allocatable::i(:)
if( ( ( i(1).eq.1.and.i(2).eq.1 ) .or. ( i(3).eq.1 .and. i(4).eq.1 ) ) .or. &
    ( ( i(5).eq.1.and.i(6).eq.1 ) .or. ( i(7).eq.1 .and. i(8).eq.1 ) ) .or. &
    ( ( i(9).eq.1.and.i(10).eq.1 ) .or. ( i(11).eq.1 .and. i(12).eq.1 ) ) .or. &
       i(0).eq.1 )  then
    n=n+1
  else
    write(6,*) "NG"
  endif
end

subroutine sub2(i,n)
integer,allocatable::i(:)
if( ( ( i(1).eq.1.and.i(2).eq.1 ) .or. ( i(3).eq.1 .and. i(4).eq.1 ) ) .or. &
    ( ( i(5).eq.1.and.i(6).eq.1 ) .or. ( i(7).eq.1 .and. i(8).eq.1 ) ) .or. &
    ( ( i(9).eq.1.and.i(10).eq.1 ) .or. ( i(11).eq.1 .and. i(12).eq.1 ) ) .or. &
       i(0).eq.1 )  then
    write(6,*) "NG"
  else
    n=n+1
  endif
end
