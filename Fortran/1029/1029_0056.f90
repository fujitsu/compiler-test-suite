  n=0

  i0=1;i1=1;i2=1;i3=1;i4=1;i5=1;i6=1;i7=1;i8=1;i9=1;i10=1;i11=1;i12=1
  call sub1(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,n)
  i0=1;i1=1;i2=0;i3=1;i4=0;i5=1;i6=0;i7=1;i8=0;i9=1;i10=0;i11=1;i12=0
  call sub1(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,n)
  i0=1;i1=0;i2=1;i3=0;i4=1;i5=0;i6=1;i7=0;i8=1;i9=0;i10=1;i11=0;i12=1
  call sub1(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,n)
  i0=1;i1=1;i2=0;i3=0;i4=1;i5=1;i6=0;i7=0;i8=1;i9=1;i10=0;i11=0;i12=1
  call sub1(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,n)
  i0=1;i1=0;i2=1;i3=1;i4=0;i5=0;i6=1;i7=1;i8=0;i9=0;i10=1;i11=1;i12=0
  call sub1(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,n)

  i0=0;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;i8=0;i9=0;i10=0;i11=0;i12=0
  call sub2(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,n)
  i0=0;i1=1;i2=1;i3=1;i4=1;i5=1;i6=1;i7=1;i8=1;i9=1;i10=1;i11=1;i12=1
  call sub2(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,n)
  i0=1;i1=0;i2=0;i3=1;i4=1;i5=1;i6=1;i7=1;i8=1;i9=1;i10=1;i11=1;i12=1
  call sub2(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,n)
  i0=1;i1=1;i2=1;i3=0;i4=0;i5=1;i6=1;i7=1;i8=1;i9=1;i10=1;i11=1;i12=1
  call sub2(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,n)
  i0=1;i1=1;i2=1;i3=1;i4=1;i5=0;i6=0;i7=1;i8=1;i9=1;i10=1;i11=1;i12=1
  call sub2(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,n)
  i0=1;i1=1;i2=1;i3=1;i4=1;i5=1;i6=1;i7=0;i8=0;i9=1;i10=1;i11=1;i12=1
  call sub2(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,n)
  i0=1;i1=1;i2=1;i3=1;i4=1;i5=1;i6=1;i7=1;i8=1;i9=0;i10=0;i11=1;i12=1
  call sub2(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,n)
  i0=1;i1=1;i2=1;i3=1;i4=1;i5=1;i6=1;i7=1;i8=1;i9=1;i10=1;i11=0;i12=0
  call sub2(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,n)

 if (.not.(n==13)) write(6,*) "NG"
 print *,'pass'
end

subroutine sub1(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,n)
  if ( ( ( i1.eq.1.or.i2.eq.1 ) .and. ( i3.eq.1 .or. i4.eq.1 ) ) .and. &
       ( ( i5.eq.1.or.i6.eq.1 ) .and. ( i7.eq.1 .or. i8.eq.1 ) ) .and. &
       ( ( i9.eq.1.or.i10.eq.1 ) .and. ( i11.eq.1 .or. i12.eq.1 ) ) .and. &
       i0.eq.1 )  then
    n=n+1
  else
    write(6,*) "NG"
  endif
end

subroutine sub2(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,n)
  if ( ( ( i1.eq.1.or.i2.eq.1 ) .and. ( i3.eq.1 .or. i4.eq.1 ) ) .and. &
       ( ( i5.eq.1.or.i6.eq.1 ) .and. ( i7.eq.1 .or. i8.eq.1 ) ) .and. &
       ( ( i9.eq.1.or.i10.eq.1 ) .and. ( i11.eq.1 .or. i12.eq.1 ) ) .and. &
       i0.eq.1 )  then
    write(6,*) "NG"
  else
    n=n+1
  endif
end
