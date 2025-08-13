 module m1
  type w;integer::z;end type
  interface operator(+)
    module procedure f1
  end interface
  contains
    elemental function ff(x1)
    type(w),intent(in)::x1
    type(w)::ff
    ff%z=x1%z
    end function
    elemental function f1(x1,x2)
    type(w),intent(in)::x1,x2
    type(w)::f1
    f1%z=x1%z+x2%z
    end function
  end
 use m1
 type(w),pointer,dimension(:)::a1
!
 allocate(a1(2));a1=(/w(11),w(12)/)
 call sa(ff(a1)+ff(a1))
 rewind 51
 read(51,*) ii,jj;if (ii/=22)write(6,*) "NG";if (jj/=24)write(6,*) "NG"
 print *,'pass'
!
 end
 subroutine sa(a)
 type w;integer::z;end type
 type (w)::a(2)
 write(51,*) a
 end
