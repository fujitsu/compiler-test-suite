 call s1
 print *,'pass'
 end
 module m1
  type w;integer(kind=4)::z=-99999;end type
  interface operator(+)
    module procedure f1
  end interface
  interface operator(*)
    module procedure f3
  end interface
  contains
    elemental function f3(x1,i)
    type(w),intent(in)::x1
    integer,intent(in)::i
    type(w)::f3
    f3%z=x1%z*i
    end function
    elemental function f1(x1,x2)
    type(w),intent(in)::x1,x2
    type(w)::f1
    f1%z=x1%z+x2%z
    end function
    subroutine sa(x,j)
    type(w),dimension(:,:,:,:)::x
    if (any(shape(x)/=(/2,3,4,5/)))write(6,*) "NG"
    if (any(x%z/=reshape((/(i,i=1,2*3*4*5)/) ,(/2,3,4,5/))*j))write(6,*) "NG"
    end subroutine
    elemental subroutine s(x,y)
    type(w),intent(in)::x
    type(w),intent(out)::y
    y=x
    end subroutine
  end
 subroutine s1
 use m1
 type(w),pointer,dimension(:,:,:,:)::at,att
 type(w),pointer,dimension(:,:,:,:)::a1,a11
 allocate(at(4,6,8,10))
 a1=>at(::2,::2,::2,::2);at(::2,::2,::2,::2)%z=reshape((/(i,i=1,2*3*4*5)/),(/2,3,4,5/))
 allocate(att(4,6,8,10)); a11=>att(::2,::2,::2,::2)
!
 call sa(f1(a1+a1,a1*3),5)
 call s(f1(a1+a1,a1*3),a11);call sa(a11,5);a11%z=0
 write(47,*)f1(a1+a1,a1*3)
 rewind 47;read (47,*) a11;call sa(a11,5);a11%z=0
!
 call sa(f1(a1+a1,a1*3)+f1(a1+a1,a1*3),10)
 call s(f1(a1+a1,a1*3)+f1(a1+a1,a1*3),a11);call sa(a11,10);a11%z=0
 write(48,*)f1(a1+a1,a1*3)+f1(a1+a1,a1*3)
 rewind 48;read (48,*) a11;call sa(a11,10);a11%z=0
!
 call sa(f1(f1(a1+a1,a1*3),f1(a1+a1,a1*3)),10)
 call s(f1(f1(a1+a1,a1*3),f1(a1+a1,a1*3)),a11);call sa(a11,10);a11%z=0
 write(49,*)f1(f1(a1+a1,a1*3),f1(a1+a1,a1*3))
 rewind 49;read (49,*) a11;call sa(a11,10);a11%z=0
!
 call sa(f1(f1(a1+a1,a1*3)+f1(a1+a1,a1*3),&
            f1(a1+a1,a1*3)+f1(a1+a1,a1*3)),20)
 call s(f1(f1(a1+a1,a1*3)+f1(a1+a1,a1*3),&
            f1(a1+a1,a1*3)+f1(a1+a1,a1*3)),a11);call sa(a11,20);a11%z=0
 write(50,*)&
        f1(f1(a1+a1,a1*3)+f1(a1+a1,a1*3),&
            f1(a1+a1,a1*3)+f1(a1+a1,a1*3))
 rewind 50;read (50,*) a11;call sa(a11,20);a11%z=0
 end
