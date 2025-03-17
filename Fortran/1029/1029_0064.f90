module mod
  type z
    integer(8),allocatable::i8(:)
    integer(4),allocatable::i4(:)
    integer(2),allocatable::i2(:)
    integer(1),allocatable::i1(:)
    real(4)   ,allocatable::r4(:)
    real(8)   ,allocatable::r8(:)
    real(16)  ,allocatable::r16(:)
  end type
end module

   use mod
   type(z)::a

   n=0
   allocate(a%i8(1),a%i4(1),a%i2(1),a%i1(1))
   allocate(a%r4(1),a%r8(1),a%r16(1))

   a%i8=8;a%i4=4;a%i2=2;a%i1=1
   a%r16=16.0;a%r8=8.0;a%r4=4.0

  if ( ( a%i8(1).eq.a%i4(1)*2 ) .and. &
       ( a%i2(1).eq.a%i1(1)*2 ) .and. &
       ( a%i8(1).eq.a%i4(1)*a%i2(1) ) ) then
    n=n+1
  else
    write(6,*) "NG"
  endif

  if ( ( a%r16(1).eq.a%r8(1)*2 ) .and. &
       (a%r8(1).eq.a%r4(1)*2) .and. &
       (a%r16(1).eq.a%r8(1)*a%r4(1)/2.0) ) then
    n=n+1
  else
    write(6,*) "NG"
  endif

 if (.not.(n==2) ) write(6,*) "NG"
 print *,'pass'

 end
