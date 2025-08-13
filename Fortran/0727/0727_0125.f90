 call s1
 print *,'pass'
 end
 module m1
  contains
    elemental function f1(x1,x2)
    real(16),intent(in)::x1,x2
    real(16)::f1
    f1=x1+x2
    end function
    subroutine sa(x,j)
    real(16),dimension(:,:,:,:)::x
    if (any(shape(x)/=(/2,3,4,5/)))write(6,*) "NG"
    if (any(abs(x-reshape((/(i,i=1,2*3*4*5)/) ,(/2,3,4,5/))*j)>0.0000001))write(6,*) "NG"
    end subroutine
    elemental subroutine s(x,y)
    real(16),intent(in)::x
    real(16),intent(out)::y
    y=x
    end subroutine
  end
 subroutine s1
 use m1
 real(16),pointer,dimension(:,:,:,:)::at,att
 real(16),pointer,dimension(:,:,:,:)::a1,a11
 allocate(at(4,6,8,10))
 a1=>at(::2,::2,::2,::2);at(::2,::2,::2,::2)=reshape((/(i,i=1,2*3*4*5)/),(/2,3,4,5/))
 allocate(att(4,6,8,10)); a11=>att(::2,::2,::2,::2)
!
 call sa(f1(a1+a1,a1*3),5)
 call s(f1(a1+a1,a1*3),a11);call sa(a11,5);a11=0
 write(26,*)f1(a1+a1,a1*3)
 rewind 26;read (26,*) a11;call sa(a11,5);a11=0
!
 call sa(f1(a1+a1,a1*3)+f1(a1+a1,a1*3),10)
 call s(f1(a1+a1,a1*3)+f1(a1+a1,a1*3),a11);call sa(a11,10);a11=0
 write(27,*)f1(a1+a1,a1*3)+f1(a1+a1,a1*3)
 rewind 27;read (27,*) a11;call sa(a11,10);a11=0
!
 call sa(f1(f1(a1+a1,a1*3),f1(a1+a1,a1*3)),10)
 call s(f1(f1(a1+a1,a1*3),f1(a1+a1,a1*3)),a11);call sa(a11,10);a11=0
 write(28,*)f1(f1(a1+a1,a1*3),f1(a1+a1,a1*3))
 rewind 28;read (28,*) a11;call sa(a11,10);a11=0
!
 call sa(f1(f1(a1+a1,a1*3)+f1(a1+a1,a1*3),&
            f1(a1+a1,a1*3)+f1(a1+a1,a1*3)),20)
 call s(f1(f1(a1+a1,a1*3)+f1(a1+a1,a1*3),&
            f1(a1+a1,a1*3)+f1(a1+a1,a1*3)),a11);call sa(a11,20);a11=0
 write(29,*)&
        f1(f1(a1+a1,a1*3)+f1(a1+a1,a1*3),&
            f1(a1+a1,a1*3)+f1(a1+a1,a1*3))
 rewind 29;read (29,*) a11;call sa(a11,20);a11=0
 end
