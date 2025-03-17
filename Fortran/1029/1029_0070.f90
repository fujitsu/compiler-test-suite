module mod
  type z
    integer,allocatable::za(:)
    logical,allocatable::ll(:)
  endtype
end module

  use mod
  interface
    subroutine sub0(a)
      use mod
      type(z)::a
    end subroutine
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
  allocate(a%ll(0:12))
  n=0

  a%za=(/1,1,1,1,1,1,1,1,1,1,1,1,1/)
  call sub0(a)
  call sub1(a,n)
  a%za=(/1,0,0,0,0,0,0,0,0,0,0,0,0/)
  call sub0(a)
  call sub1(a,n)
  a%za=(/0,1,1,0,0,0,0,0,0,0,0,0,0/)
  call sub0(a)
  call sub1(a,n)
  a%za=(/0,0,0,1,1,0,0,0,0,0,0,0,0/)
  call sub0(a)
  call sub1(a,n)
  a%za=(/0,0,0,0,0,1,1,0,0,0,0,0,0/)
  call sub0(a)
  call sub1(a,n)
  a%za=(/0,0,0,0,0,0,0,1,1,0,0,0,0/)
  call sub0(a)
  call sub1(a,n)
  a%za=(/0,0,0,0,0,0,0,0,0,1,1,0,0/)
  call sub0(a)
  call sub1(a,n)
  a%za=(/0,0,0,0,0,0,0,0,0,0,0,1,1/)
  call sub0(a)
  call sub1(a,n)

  a%za=(/0,0,0,0,0,0,0,0,0,0,0,0,0/)
  call sub0(a)
  call sub2(a,n)
  a%za=(/0,1,0,0,0,0,0,0,0,0,0,0,0/)
  call sub0(a)
  call sub2(a,n)
  a%za=(/0,0,1,0,0,0,0,0,0,0,0,0,0/)
  call sub0(a)
  call sub2(a,n)
  a%za=(/0,0,0,1,0,0,0,0,0,0,0,0,0/)
  call sub0(a)
  call sub2(a,n)
  a%za=(/0,0,0,0,1,0,0,0,0,0,0,0,0/)
  call sub0(a)
  call sub2(a,n)
  a%za=(/0,0,0,0,0,1,0,0,0,0,0,0,0/)
  call sub0(a)
  call sub2(a,n)
  a%za=(/0,0,0,0,0,0,1,0,0,0,0,0,0/)
  call sub0(a)
  call sub2(a,n)
  a%za=(/0,0,0,0,0,0,0,1,0,0,0,0,0/)
  call sub0(a)
  call sub2(a,n)
  a%za=(/0,0,0,0,0,0,0,0,1,0,0,0,0/)
  call sub0(a)
  call sub2(a,n)
  a%za=(/0,0,0,0,0,0,0,0,0,1,0,0,0/)
  call sub0(a)
  call sub2(a,n)
  a%za=(/0,0,0,0,0,0,0,0,0,0,1,0,0/)
  call sub0(a)
  call sub2(a,n)
  a%za=(/0,0,0,0,0,0,0,0,0,0,0,1,0/)
  call sub0(a)
  call sub2(a,n)
  a%za=(/0,0,0,0,0,0,0,0,0,0,0,0,1/)
  call sub0(a)
  call sub2(a,n)
  a%za=(/0,0,1,0,1,0,1,0,1,0,1,0,1/)
  call sub0(a)
  call sub2(a,n)
  a%za=(/0,1,0,1,0,1,0,1,0,1,0,1,0/)
  call sub0(a)
  call sub2(a,n)
  a%za=(/0,0,0,1,0,0,1,0,0,1,0,0,1/)
  call sub0(a)
  call sub2(a,n)

 if (.not.(n(1)==8) .or. .not.(n(2)==16)) write(6,*) "NG"
 print *,'pass'
end

subroutine sub0(a)
use mod
type(z)::a

where(a%za==1)
  a%ll=.true.
else where
  a%ll=.falsE.
end where
end

subroutine sub1(a,n)
use mod
type(z)::a
integer,allocatable::n(:)
if( ( ( a%ll(1).and.a%ll(2) ) .or. &
      ( a%ll(3).and.a%ll(4) ) ) .or. &
    ( ( a%ll(5).and.a%ll(6) ) .or. &
      ( a%ll(7).and.a%ll(8) ) ) .or. &
    ( ( a%ll(9).and.a%ll(10) ) .or. &
      ( a%ll(11).and.a%ll(12) ) ) .or. &
     a%ll(0) )  then
  if( ( ( a%ll(1).and.a%ll(2) ) .or. &
        ( a%ll(3).and.a%ll(4) ) ) .or. &
      ( ( a%ll(5).and.a%ll(6) ) .or. &
        ( a%ll(7).and.a%ll(8) ) ) .or. &
      ( ( a%ll(9).and.a%ll(10) ) .or. &
        ( a%ll(11).and.a%ll(12) ) ) .or. &
      a%ll(0) )  then
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
if( ( ( a%ll(1).and.a%ll(2) ) .or. &
      ( a%ll(3).and.a%ll(4) ) ) .or. &
    ( ( a%ll(5).and.a%ll(6) ) .or. &
      ( a%ll(7).and.a%ll(8) ) ) .or. &
    ( ( a%ll(9).and.a%ll(10) ) .or. &
      ( a%ll(11).and.a%ll(12) ) ) .or. &
       a%ll(0) ) then
    write(6,*) "NG"
else
  if ( .not.  &
    ( ( ( a%ll(1).and.a%ll(2) ) .or. &
        ( a%ll(3).and.a%ll(4) ) ) .or. &
      ( ( a%ll(5).and.a%ll(6) ) .or. &
        ( a%ll(7).and.a%ll(8) ) ) .or. &
      ( ( a%ll(9).and.a%ll(10) ) .or. &
        ( a%ll(11).and.a%ll(12) ) ) .or. &
         a%ll(0) ) ) then
    n(2)=n(2)+1
  endif
endif
end
