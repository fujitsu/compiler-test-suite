 do i=1,3
  call s1
 end do
 print *,'pass'
 end
 module m1
  interface set
    module procedure setw,setx
  end interface
  interface chk
    module procedure chkw,chkx
  end interface
  type w
    integer::i1=1; integer::i2=2
  end type
  type x
    integer::i1; integer::i2
  end type
  contains
  elemental function chkw(a) result(chk)
  type(w),intent(in)::a
  logical(2)::chk
  chk=.false.
  if (a%i1/=1)chk=.true.
  if (a%i2/=2)chk=.true.
  end function
  elemental subroutine setw(a)
  type(w),intent(out)::a
  end subroutine
  elemental function chkx(a) result(chk)
  type(x),intent(in)::a
  logical(2)::chk
  chk=.false.
  if (a%i1/=-1)chk=.true.
  if (a%i2/=-2)chk=.true.
  end function
  elemental subroutine setx(a)
  type(x),intent(out)::a
  a%i1=-1;a%i2=-2
  end subroutine
 end
 subroutine s1
 use m1
  type(w),pointer::a1,a2(:,:,:,:)
  type(x),pointer::b1,b2(:,:,:,:)
 !
 allocate(a1)
 if ((chk(a1))) write(6,*) "NG"
 deallocate(a1)

 allocate(a2(2,3,4,5))
 if (any(chk(a2))) write(6,*) "NG"
 deallocate(a2)
!
!
 allocate(b1)
 call set(b1)
 if ((chk(b1))) write(6,*) "NG"
 deallocate(b1)

 allocate(b2(2,3,4,5))
 call set(b2)
 if (any(chk(b2))) write(6,*) "NG"
 deallocate(b2)
!
!
 allocate(a1,a2(2,3,4,5))
 if ((chk(a1))) write(6,*) "NG"
 if (any(chk(a2))) write(6,*) "NG"
 deallocate(a2,a1)
!
 allocate(b1,b2(2,3,4,5))
 call set(b1)
 call set(b2)
 if ((chk(b1))) write(6,*) "NG"
 if (any(chk(b2))) write(6,*) "NG"
 deallocate(b1,b2)
!
 allocate(a1,b1)
 if ((chk(a1))) write(6,*) "NG"
 call set(b1)
 if ((chk(b1))) write(6,*) "NG"
 deallocate(b1,a1)
!
 allocate(a2(2,3,4,5),b2(2,3,4,5))
 if (any(chk(a2))) write(6,*) "NG"
 call set(b2)
 if (any(chk(b2))) write(6,*) "NG"
 deallocate(b2,a2)
!
 allocate(a2(2,3,4,5),a1,b1,b2(2,3,4,5))
 if ((chk(a1))) write(6,*) "NG"
 if (any(chk(a2))) write(6,*) "NG"
 call set(b1)
 call set(b2)
 if ((chk(b1))) write(6,*) "NG"
 if (any(chk(b2))) write(6,*) "NG"
 deallocate(a1,b1,b2,a2)

end
