  call s1(1)
  call s1(2)
  call s1(3)
 print *,'pass'
 end
 module m1
  type w
    integer::i1=1; integer::i2=2
  end type
  type x
    integer::i1; integer::i2
  end type
 end
 subroutine s1(n)
 use m1
  save
  type(w),pointer::a1
  type(x),pointer::b1
  type(w),allocatable::c1
  type(x),allocatable::d1
select case (n)
 case(1)
 allocate(a1)
 allocate(b1)
 allocate(c1)
 allocate(d1)
 case (2)
  b1%i1=1
  b1%i2=2
  d1%i1=1
  d1%i2=2
 case (3)
write(2,'(z8.8)')a1%i1
write(2,'(z8.8)')b1%i1
write(2,'(z8.8)')c1%i1
write(2,'(z8.8)')d1%i1
 if (a1%i1/=1)print *,101
 if (a1%i2/=2)print *,102
 if (b1%i1/=1)print *,111
 if (b1%i2/=2)print *,112
 if (c1%i1/=1)print *,121
 if (c1%i2/=2)print *,122
 if (d1%i1/=1)print *,131
 if (d1%i2/=2)print *,132
end select
end
