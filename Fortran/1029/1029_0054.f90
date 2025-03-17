   integer(8)::i8
   integer(4)::i4
   integer(2)::i2
   integer(1)::i1
   real(4)::r4
   real(8)::r8
   real(16)::r16

   n=0
   i8=8;i4=4;i2=2;i1=1
   r16=16.0;r8=8.0;r4=4.0

  if ( ( i8.eq.i4*2 ) .and. ( i2.eq.i1*2 ) .and. ( i8.eq.i4*i2 ) ) then
    n=n+1
  else
    write(6,*) "NG"
  endif

  if ( ( r16.eq.r8*2 ) .and. (r8.eq.r4*2) .and. (r16.eq.r8*r4/2.0) ) then
    n=n+1
  else
    write(6,*) "NG"
  endif

 if (.not.(n==2) ) write(6,*) "NG"
 print *,'pass'

 end
