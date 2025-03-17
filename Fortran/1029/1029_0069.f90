module mod
  type z
    integer,allocatable::za(:)
  endtype
end module

  use mod
  interface
    subroutine sub1(a,n)
      use mod
      type(z)::a
      integer,allocatable::n(:)
    end subroutine
    subroutine sub2(a,n)
      use mod
      type(z)::a
      integer,allocatable::n(:)
    end subroutine
  end interface

  type(z)::a
  integer,allocatable::n(:)
  allocate(n(2))
  allocate(a%za(0:12))
  n=0

  a%za=(/1,1,1,1,1,1,1,1,1,1,1,1,1/)
  call sub1(a,n)
  a%za=(/1,0,0,0,0,0,0,0,0,0,0,0,0/)
  call sub1(a,n)
  a%za=(/0,1,1,0,0,0,0,0,0,0,0,0,0/)
  call sub1(a,n)
  a%za=(/0,0,0,1,1,0,0,0,0,0,0,0,0/)
  call sub1(a,n)
  a%za=(/0,0,0,0,0,1,1,0,0,0,0,0,0/)
  call sub1(a,n)
  a%za=(/0,0,0,0,0,0,0,1,1,0,0,0,0/)
  call sub1(a,n)
  a%za=(/0,0,0,0,0,0,0,0,0,1,1,0,0/)
  call sub1(a,n)
  a%za=(/0,0,0,0,0,0,0,0,0,0,0,1,1/)
  call sub1(a,n)

  a%za=(/0,0,0,0,0,0,0,0,0,0,0,0,0/)
  call sub2(a,n)
  a%za=(/0,1,0,0,0,0,0,0,0,0,0,0,0/)
  call sub2(a,n)
  a%za=(/0,0,1,0,0,0,0,0,0,0,0,0,0/)
  call sub2(a,n)
  a%za=(/0,0,0,1,0,0,0,0,0,0,0,0,0/)
  call sub2(a,n)
  a%za=(/0,0,0,0,1,0,0,0,0,0,0,0,0/)
  call sub2(a,n)
  a%za=(/0,0,0,0,0,1,0,0,0,0,0,0,0/)
  call sub2(a,n)
  a%za=(/0,0,0,0,0,0,1,0,0,0,0,0,0/)
  call sub2(a,n)
  a%za=(/0,0,0,0,0,0,0,1,0,0,0,0,0/)
  call sub2(a,n)
  a%za=(/0,0,0,0,0,0,0,0,1,0,0,0,0/)
  call sub2(a,n)
  a%za=(/0,0,0,0,0,0,0,0,0,1,0,0,0/)
  call sub2(a,n)
  a%za=(/0,0,0,0,0,0,0,0,0,0,1,0,0/)
  call sub2(a,n)
  a%za=(/0,0,0,0,0,0,0,0,0,0,0,1,0/)
  call sub2(a,n)
  a%za=(/0,0,0,0,0,0,0,0,0,0,0,0,1/)
  call sub2(a,n)
  a%za=(/0,0,1,0,1,0,1,0,1,0,1,0,1/)
  call sub2(a,n)
  a%za=(/0,1,0,1,0,1,0,1,0,1,0,1,0/)
  call sub2(a,n)
  a%za=(/0,0,0,1,0,0,1,0,0,1,0,0,1/)
  call sub2(a,n)

 if (.not.(n(1)==8) .or. .not.(n(2)==16)) write(6,*) "NG"
 print *,'pass'
end

subroutine sub1(a,n)
use mod
type(z)::a
integer,allocatable::n(:)
if( ( ( a%za(1).eq.1.and.a%za(2).eq.1 ) .or. &
      ( a%za(3).eq.1 .and. a%za(4).eq.1 ) ) .or. &
    ( ( a%za(5).eq.1.and.a%za(6).eq.1 ) .or. &
      ( a%za(7).eq.1 .and. a%za(8).eq.1 ) ) .or. &
    ( ( a%za(9).eq.1.and.a%za(10).eq.1 ) .or. &
      ( a%za(11).eq.1 .and. a%za(12).eq.1 ) ) .or. &
     a%za(0).eq.1 )  then
  if( ( ( a%za(1).eq.1.and.a%za(2).eq.1 ) .or. &
        ( a%za(3).eq.1 .and. a%za(4).eq.1 ) ) .or. &
      ( ( a%za(5).eq.1.and.a%za(6).eq.1 ) .or. &
        ( a%za(7).eq.1 .and. a%za(8).eq.1 ) ) .or. &
      ( ( a%za(9).eq.1.and.a%za(10).eq.1 ) .or. &
        ( a%za(11).eq.1 .and. a%za(12).eq.1 ) ) .or. &
       a%za(0).eq.1 )  then
    n(1)=n(1)+1
  endif
else
    write(6,*) "NG"
endif
end

subroutine sub2(a,n)
use mod
type(z)::a
integer,allocatable::n(:)
if( ( ( a%za(1).eq.1.and.a%za(2).eq.1 ) .or. &
      ( a%za(3).eq.1 .and. a%za(4).eq.1 ) ) .or. &
    ( ( a%za(5).eq.1.and.a%za(6).eq.1 ) .or. &
      ( a%za(7).eq.1 .and. a%za(8).eq.1 ) ) .or. &
    ( ( a%za(9).eq.1.and.a%za(10).eq.1 ) .or. &
      ( a%za(11).eq.1 .and. a%za(12).eq.1 ) ) .or. &
       a%za(0).eq.1 ) then
    write(6,*) "NG"
else
  if ( .not.  &
    ( ( ( a%za(1).eq.1.and.a%za(2).eq.1 ) .or. &
        ( a%za(3).eq.1 .and. a%za(4).eq.1 ) ) .or. &
      ( ( a%za(5).eq.1.and.a%za(6).eq.1 ) .or. &
        ( a%za(7).eq.1 .and. a%za(8).eq.1 ) ) .or. &
      ( ( a%za(9).eq.1.and.a%za(10).eq.1 ) .or. &
        ( a%za(11).eq.1 .and. a%za(12).eq.1 ) ) .or. &
         a%za(0).eq.1 ) ) then
    n(2)=n(2)+1
  endif
endif
end
