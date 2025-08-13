 call s1
 print *,'pass'
 end
 module m1
  contains
    elemental function f1(x1,x2)
    complex(16),intent(in)::x1,x2
    complex(16)::f1
    f1=x1+x2
    end function
    subroutine sa(x,j)
    complex(16),dimension(:,:,:,:)::x
    if (any(shape(x)/=(/2,3,4,5/)))write(6,*) "NG"
    if (any(abs(x-reshape((/(cmplx(i,i),i=1,2*3*4*5)/) ,(/2,3,4,5/))*j)>0.0000001))write(6,*) "NG"
    end subroutine
    elemental subroutine s(x,y)
    complex(16),intent(in)::x
    complex(16),intent(out)::y
    y=x
    end subroutine
  end
 subroutine s1
 use m1
 complex(16),pointer,dimension(:,:,:,:)::at,att
 complex(16),pointer,dimension(:,:,:,:)::a1,a11
 allocate(at(4,6,8,10))
 a1=>at(::2,::2,::2,::2)
at(::2,::2,::2,::2)=cmplx(reshape((/(i,i=1,2*3*4*5)/),(/2,3,4,5/)),&
                          reshape((/(i,i=1,2*3*4*5)/),(/2,3,4,5/)))
 allocate(att(4,6,8,10)); a11=>att(::2,::2,::2,::2)
!
 call sa(f1(a1+a1,a1*3),5)
 call s(f1(a1+a1,a1*3),a11);call sa(a11,5);a11=0
 write(30,*)f1(a1+a1,a1*3)
 rewind 30;read (30,*) a11;call sa(a11,5);a11=0
!
 call sa(f1(a1+a1,a1*3)+f1(a1+a1,a1*3),10)
 call s(f1(a1+a1,a1*3)+f1(a1+a1,a1*3),a11);call sa(a11,10);a11=0
 write(31,*)f1(a1+a1,a1*3)+f1(a1+a1,a1*3)
 rewind 31;read (31,*) a11;call sa(a11,10);a11=0
!
 call sa(f1(f1(a1+a1,a1*3),f1(a1+a1,a1*3)),10)
 call s(f1(f1(a1+a1,a1*3),f1(a1+a1,a1*3)),a11);call sa(a11,10);a11=0
 write(32,*)f1(f1(a1+a1,a1*3),f1(a1+a1,a1*3))
 rewind 32;read (32,*) a11;call sa(a11,10);a11=0
!
 call sa(f1(f1(a1+a1,a1*3)+f1(a1+a1,a1*3),&
            f1(a1+a1,a1*3)+f1(a1+a1,a1*3)),20)
 call s(f1(f1(a1+a1,a1*3)+f1(a1+a1,a1*3),&
            f1(a1+a1,a1*3)+f1(a1+a1,a1*3)),a11);call sa(a11,20);a11=0
 write(33,*)&
        f1(f1(a1+a1,a1*3)+f1(a1+a1,a1*3),&
            f1(a1+a1,a1*3)+f1(a1+a1,a1*3))
 rewind 33;read (33,*) a11;call sa(a11,20);a11=0
 end
