  Implicit complex (c)
  common /com0/ i0 ,i1 ,i2 ,i3 ,i4 ,i5 ,i6 ,i7 ,i8 ,i9 ,&
                i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
  common /com1/ c0 ,c1 ,c2 ,c3 ,c4 ,c5 ,c6 ,c7 ,c8 ,c9 ,&
                c10,c11,c12,c13,c14,c15,c16,c17,c18,c19
  n=0

  i0=0;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;i8=0;i9=0
  i10=0;i11=0;i12=0;i13=0;i14=0;i15=0;i16=0;i17=1;i18=1;i19=1
  call sub0()
  call sub1(n)

  i0=0;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;i8=0;i9=0
  i10=0;i11=0;i12=0;i13=0;i14=0;i15=0;i16=1;i17=0;i18=1;i19=1
  call sub0()
  call sub1(n)

  i0=0;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;i8=0;i9=0
  i10=0;i11=0;i12=0;i13=0;i14=0;i15=1;i16=0;i17=0;i18=1;i19=1
  call sub0()
  call sub1(n)

  i0=0;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;i8=0;i9=0
  i10=0;i11=0;i12=0;i13=0;i14=1;i15=0;i16=0;i17=0;i18=1;i19=1
  call sub0()
  call sub1(n)

  i0=0;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;i8=0;i9=1
  i10=1;i11=1;i12=1;i13=1;i14=0;i15=0;i16=0;i17=0;i18=1;i19=1
  call sub0()
  call sub1(n)

  i0=0;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;i8=1;i9=0
  i10=1;i11=1;i12=1;i13=1;i14=0;i15=0;i16=0;i17=0;i18=1;i19=1
  call sub0()
  call sub1(n)

  i0=0;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=1;i8=0;i9=0
  i10=1;i11=1;i12=1;i13=1;i14=0;i15=0;i16=0;i17=0;i18=1;i19=1
  call sub0()
  call sub1(n)

  i0=0;i1=0;i2=0;i3=0;i4=1;i5=1;i6=1;i7=0;i8=0;i9=0
  i10=1;i11=1;i12=1;i13=1;i14=0;i15=0;i16=0;i17=0;i18=1;i19=1
  call sub0()
  call sub1(n)

  i0=0;i1=0;i2=0;i3=1;i4=0;i5=1;i6=1;i7=0;i8=0;i9=0
  i10=1;i11=1;i12=1;i13=1;i14=0;i15=0;i16=0;i17=0;i18=1;i19=1
  call sub0()
  call sub1(n)

  i0=0;i1=0;i2=1;i3=0;i4=0;i5=1;i6=1;i7=0;i8=0;i9=0
  i10=1;i11=1;i12=1;i13=1;i14=0;i15=0;i16=0;i17=0;i18=1;i19=1
  call sub0()
  call sub1(n)

  i0=0;i1=1;i2=0;i3=0;i4=0;i5=1;i6=1;i7=0;i8=0;i9=0
  i10=1;i11=1;i12=1;i13=1;i14=0;i15=0;i16=0;i17=0;i18=1;i19=1
  call sub0()
  call sub1(n)

  i0=1;i1=0;i2=0;i3=0;i4=0;i5=1;i6=1;i7=0;i8=0;i9=0
  i10=1;i11=1;i12=1;i13=1;i14=0;i15=0;i16=0;i17=0;i18=1;i19=1
  call sub0()
  call sub1(n)

  if (.not.(n==12)) write(6,*) "NG"

  i0=1;i1=1;i2=1;i3=1;i4=1;i5=1;i6=1;i7=1;i8=1;i9=1
  i10=1;i11=1;i12=1;i13=1;i14=1;i15=1;i16=1;i17=1;i18=1;i19=0
  call sub0()
  call sub2(n)
  call sub3()

  i0=1;i1=1;i2=1;i3=1;i4=1;i5=1;i6=1;i7=1;i8=1;i9=1
  i10=1;i11=1;i12=1;i13=1;i14=1;i15=1;i16=1;i17=1;i18=0;i19=1
  call sub0()
  call sub2(n)
  call sub3()

  i0=1;i1=1;i2=1;i3=1;i4=1;i5=1;i6=1;i7=1;i8=1;i9=1
  i10=1;i11=1;i12=1;i13=0;i14=0;i15=0;i16=0;i17=0;i18=1;i19=1
  call sub0()
  call sub2(n)
  call sub3()

  i0=1;i1=1;i2=1;i3=1;i4=1;i5=1;i6=1;i7=1;i8=1;i9=1
  i10=1;i11=1;i12=0;i13=1;i14=0;i15=0;i16=0;i17=0;i18=1;i19=1
  call sub0()
  call sub2(n)
  call sub3()

  i0=1;i1=1;i2=1;i3=1;i4=1;i5=1;i6=1;i7=1;i8=1;i9=1
  i10=1;i11=0;i12=1;i13=1;i14=0;i15=0;i16=0;i17=0;i18=1;i19=1
  call sub0()
  call sub2(n)
  call sub3()

  i0=1;i1=1;i2=1;i3=1;i4=1;i5=1;i6=1;i7=1;i8=1;i9=1
  i10=0;i11=1;i12=1;i13=1;i14=0;i15=0;i16=0;i17=0;i18=1;i19=1
  call sub0()
  call sub2(n)
  call sub3()

  i0=1;i1=1;i2=1;i3=1;i4=1;i5=1;i6=0;i7=0;i8=0;i9=0
  i10=1;i11=1;i12=1;i13=1;i14=0;i15=0;i16=0;i17=0;i18=1;i19=1
  call sub0()
  call sub2(n)
  call sub3()

  i0=1;i1=1;i2=1;i3=1;i4=1;i5=0;i6=1;i7=0;i8=0;i9=0
  i10=1;i11=1;i12=1;i13=1;i14=0;i15=0;i16=0;i17=0;i18=1;i19=1
  call sub0()
  call sub2(n)
  call sub3()

  i0=0;i1=0;i2=0;i3=0;i4=0;i5=1;i6=1;i7=0;i8=0;i9=0
  i10=1;i11=1;i12=1;i13=1;i14=0;i15=0;i16=0;i17=0;i18=1;i19=1
  call sub0()
  call sub2(n)
  call sub3()

  if (.not.(n==21)) write(6,*) "NG"

 print *,'pass'
end

subroutine sub1(n)
 implicit complex(c)
  common /com1/ c0 ,c1 ,c2 ,c3 ,c4 ,c5 ,c6 ,c7 ,c8 ,c9 ,&
                c10,c11,c12,c13,c14,c15,c16,c17,c18,c19
  if ( .not. &
     ( ( ( ( ( ( ( ( ( ( ( ( ( ( &
       (c0.ne.(1.0,1.0).or.c1.ne.(1.0,1.0).or.c2.ne.(1.0,1.0).or. &
        c3.ne.(1.0,1.0).or.c4.ne.(1.0,1.0)) &
       .and. (c5.ne.(1.0,1.0).and.c6.ne.(1.0,1.0)) ) &
       .or. c7.ne.(1.0,1.0) ) .or. c8.ne.(1.0,1.0) ) .or. c9.ne.(1.0,1.0) ) &
       .and. c10.ne.(1.0,1.0) ) .and. c11.ne.(1.0,1.0) ) &
       .and. c12.ne.(1.0,1.0) ) .and. c13.ne.(1.0,1.0) ) &
       .or. c14.ne.(1.0,1.0) ) .or. c15.ne.(1.0,1.0) ) &
       .or. c16.ne.(1.0,1.0) ) .or. c17.ne.(1.0,1.0) ) &
       .and. c18.ne.(1.0,1.0) ) &
       .and. c19.ne.(1.0,1.0) ) ) then
    write(6,*) "NG"
  else
    n=n+1
  endif
end

subroutine sub2(n)
 implicit complex(c)
  common /com1/ c0 ,c1 ,c2 ,c3 ,c4 ,c5 ,c6 ,c7 ,c8 ,c9 ,&
                c10,c11,c12,c13,c14,c15,c16,c17,c18,c19
  if ( .not. &
     ( ( ( ( ( ( ( ( ( ( ( ( ( ( &
       (c0.ne.(1.0,1.0).or.c1.ne.(1.0,1.0).or.c2.ne.(1.0,1.0).or. &
        c3.ne.(1.0,1.0).or.c4.ne.(1.0,1.0)) &
       .and. (c5.ne.(1.0,1.0).and.c6.ne.(1.0,1.0)) ) &
       .or. c7.ne.(1.0,1.0) ) .or. c8.ne.(1.0,1.0) ) .or. c9.ne.(1.0,1.0) ) &
       .and. c10.ne.(1.0,1.0) ) .and. c11.ne.(1.0,1.0) ) &
       .and. c12.ne.(1.0,1.0) ) .and. c13.ne.(1.0,1.0) ) &
       .or. c14.ne.(1.0,1.0) ) .or. c15.ne.(1.0,1.0) ) &
       .or. c16.ne.(1.0,1.0) ) .or. c17.ne.(1.0,1.0) ) &
       .and. c18.ne.(1.0,1.0) ) &
       .and. c19.ne.(1.0,1.0) ) ) then
    n=n+1
  else
    write(6,*) "NG"
  endif
end

subroutine sub3()
 implicit complex(c)
  common /com1/ c0 ,c1 ,c2 ,c3 ,c4 ,c5 ,c6 ,c7 ,c8 ,c9 ,&
                c10,c11,c12,c13,c14,c15,c16,c17,c18,c19
  if ( .not. &
     ( ( ( ( ( ( ( ( ( ( ( ( ( ( &
       (c0.ne.(1.0,1.0).or.c1.ne.(1.0,1.0).or.c2.ne.(1.0,1.0).or. &
        c3.ne.(1.0,1.0).or.c4.ne.(1.0,1.0)) &
       .and. (c5.ne.(1.0,1.0).and.c6.ne.(1.0,1.0)) ) &
       .or. c7.ne.(1.0,1.0) ) .or. c8.ne.(1.0,1.0) ) .or. c9.ne.(1.0,1.0) ) &
       .and. c10.ne.(1.0,1.0) ) .and. c11.ne.(1.0,1.0) ) &
       .and. c12.ne.(1.0,1.0) ) .and. c13.ne.(1.0,1.0) ) &
       .or. c14.ne.(1.0,1.0) ) .or. c15.ne.(1.0,1.0) ) &
       .or. c16.ne.(1.0,1.0) ) .or. c17.ne.(1.0,1.0) ) &
       .and. c18.ne.(1.0,1.0) ) &
       .and. c19.ne.(1.0,1.0) ) ) goto 100
    write(6,*) "NG"
 100  continue
end

subroutine sub0()
  implicit complex(c)
  common /com0/ i0 ,i1 ,i2 ,i3 ,i4 ,i5 ,i6 ,i7 ,i8 ,i9 ,&
                i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
  common /com1/ c0 ,c1 ,c2 ,c3 ,c4 ,c5 ,c6 ,c7 ,c8 ,c9 ,&
                c10,c11,c12,c13,c14,c15,c16,c17,c18,c19
  call sub00(i0,c0)
  call sub00(i1,c1)
  call sub00(i2,c2)
  call sub00(i3,c3)
  call sub00(i4,c4)
  call sub00(i5,c5)
  call sub00(i6,c6)
  call sub00(i7,c7)
  call sub00(i8,c8)
  call sub00(i9,c9)
  call sub00(i10,c10)
  call sub00(i11,c11)
  call sub00(i12,c12)
  call sub00(i13,c13)
  call sub00(i14,c14)
  call sub00(i15,c15)
  call sub00(i16,c16)
  call sub00(i17,c17)
  call sub00(i18,c18)
  call sub00(i19,c19)
end

subroutine sub00(i,c)
 integer::i
 complex::c
 if(i==0) then
   c=(1.0,1.0)
 else
   c=(0.0,1.0)
 endif
end
