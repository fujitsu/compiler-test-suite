module mod
  type z
    integer::n(2)
    integer(8),allocatable::i(:)
    integer(1),allocatable::j(:)
  endtype
end module

 use mod
 interface
   subroutine sub1(a)
     use mod
     type(z)::a
   end subroutine
   subroutine sub2(a)
     use mod
     type(z)::a
   end subroutine
 end interface
 type(z)::a
  a%n=0
  allocate(a%i(0:19))
  allocate(a%j(1))
  a%n=0
  a%j=1

  a%i=(/1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1/)
  call sub1(a)
  a%i=(/1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
  call sub1(a)
  a%i=(/1,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
  call sub1(a)
  a%i=(/1,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
  call sub1(a)
  a%i=(/1,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/)
  call sub1(a)
  a%i=(/1,1,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0/)
  call sub1(a)
  a%i=(/1,1,0,0,0,1,1,1,1,1,0,1,0,0,0,0,0,0,0,0/)
  call sub1(a)
  a%i=(/1,1,0,0,0,1,1,1,1,1,0,0,1,0,0,0,0,0,0,0/)
  call sub1(a)
  a%i=(/1,1,0,0,0,1,1,1,1,1,0,0,0,1,1,1,1,0,0,0/)
  call sub1(a)
  a%i=(/1,1,0,0,0,1,1,1,1,1,0,0,0,1,1,1,0,1,0,0/)
  call sub1(a) 
  a%i=(/1,1,0,0,0,1,1,1,1,1,0,0,0,1,1,1,0,0,1,0/)
  call sub1(a)
  a%i=(/1,1,0,0,0,1,1,1,1,1,0,0,0,1,1,1,0,0,0,1/)
  call sub1(a)

  a%i=(/0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1/)
  call sub2(a)
  a%i=(/1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1/)
  call sub2(a)
  a%i=(/1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1/)
  call sub2(a)
  a%i=(/1,1,0,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1/)
  call sub2(a)
  a%i=(/1,1,0,0,0,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1/)
  call sub2(a)
  a%i=(/1,1,0,0,0,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1/)
  call sub2(a)
  a%i=(/1,1,0,0,0,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1/)
  call sub2(a)
  a%i=(/1,1,0,0,0,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1/)
  call sub2(a)
  a%i=(/1,1,0,0,0,1,1,1,1,1,0,0,0,1,0,1,1,1,1,1/)
  call sub2(a)
  a%i=(/1,1,0,0,0,1,1,1,1,1,0,0,0,1,1,0,1,1,1,1/)
  call sub2(a)
  a%i=(/1,1,0,0,0,1,1,1,1,1,0,0,0,1,1,1,0,0,0,0/)
  call sub2(a)

  if (any(a%i/= (/1,1,(0,i=1,3),(1,i=1,5),(0,i=1,3),(1,i=1,3),(0,i=1,4)/)) &
      .or. any(a%n/=(/12,11/)) .or. .not. all(a%n==(/12,11/))) then
    write(6,*) "NG"
  endif

  if (any(a%n/=(/12,11/))) write(6,*) "NG"
  if ( .not. all(a%n==(/12,11/))) write(6,*) "NG"

 print *,'pass'
end

subroutine sub1(a)
 use mod
 type(z)::a
  if ( a%i(0).eq.a%j(1) .and. &
       ( a%i(1).eq.a%j(1) .and. &
       ( a%i(2).eq.a%j(1) .or. &
       ( a%i(3).eq.a%j(1) .or. &
       ( a%i(4).eq.a%j(1) .or. &
       ( a%i(5).eq.a%j(1) .and. &
       ( a%i(6).eq.a%j(1) .and. &
       ( a%i(7).eq.a%j(1) .and. &
       ( a%i(8).eq.a%j(1) .and. &
       ( a%i(9).eq.a%j(1) .and. &
       ( a%i(10).eq.a%j(1) .or. &
       ( a%i(11).eq.a%j(1) .or. &
       ( a%i(12).eq.a%j(1) .or. &
       ( a%i(13).eq.a%j(1) .and. a%i(14).eq.a%j(1) .and. &
         a%i(15).eq.a%j(1)) .and. &
       ( a%i(16).eq.a%j(1) .or. a%i(17).eq.a%j(1) .or. &
         a%i(18).eq.a%j(1) .or. a%i(19).eq.a%j(1) )  &
       ) ) ) ) ) ) ) ) ) ) ) ) )  then
    a%n(1)=a%n(1)+1
  else
    write(6,*) "NG"
  endif
end

subroutine sub2(a)
 use mod
 type(z)::a
  if ( a%i(0).eq.a%j(1) .and. &
       ( a%i(1).eq.a%j(1) .and. &
       ( a%i(2).eq.a%j(1) .or. &
       ( a%i(3).eq.a%j(1) .or. &
       ( a%i(4).eq.a%j(1) .or. &
       ( a%i(5).eq.a%j(1) .and. &
       ( a%i(6).eq.a%j(1) .and. &
       ( a%i(7).eq.a%j(1) .and. &
       ( a%i(8).eq.a%j(1) .and. &
       ( a%i(9).eq.a%j(1) .and. &
       ( a%i(10).eq.a%j(1) .or. &
       ( a%i(11).eq.a%j(1) .or. &
       ( a%i(12).eq.a%j(1) .or. &
       ( a%i(13).eq.a%j(1) .and. a%i(14).eq.a%j(1) .and. &
         a%i(15).eq.a%j(1)) .and. &
       ( a%i(16).eq.a%j(1) .or. a%i(17).eq.a%j(1) .or. &
         a%i(18).eq.a%j(1) .or. a%i(19).eq.a%j(1) )  &
       ) ) ) ) ) ) ) ) ) ) ) ) )  then
    write(6,*) "NG"
  else
    a%n(2)=a%n(2)+1
  endif
end
