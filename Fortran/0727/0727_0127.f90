 call s1
 print *,'pass'
 end
 module m1
 interface assignment(=)
   module procedure zero
 end interface
 interface operator(+)
   module procedure plus
 end interface
  contains
    elemental function f1(x1,x2)
    logical(8),intent(in)::x1,x2
    logical(8)::f1
    f1=x1.and.x2
    end function
    subroutine sa(x,j)
    logical(8),dimension(:,:,:,:)::x
    if (any(shape(x)/=(/2,3,4,5/)))write(6,*) "NG"
    if (.not.all(x))write(6,*) "NG"
    end subroutine
    elemental subroutine s(x,y)
    logical(8),intent(in)::x
    logical(8),intent(out)::y
    y=x
    end subroutine
    elemental subroutine zero(a1,a2)
    logical(8),intent(out)::a1
    integer,intent(in)::a2
    select case(a2)
      case(0);a1=.false.
    end select
    end subroutine
    elemental function plus(x1,x2)
    logical(8),intent(in)::x1,x2
    logical(8)::plus
    plus=x1.and.x2
    end function
  end
 subroutine s1
 use m1
 logical(8),pointer,dimension(:,:,:,:)::at,att
 logical(8),pointer,dimension(:,:,:,:)::a1,a11
 allocate(at(4,6,8,10));at=0
 a1=>at(::2,::2,::2,::2);at(::2,::2,::2,::2)=.true.
 allocate(att(4,6,8,10)); a11=>att(::2,::2,::2,::2)
!
 call sa(f1(a1+a1,a1.and.a1.and.a1),5)
 call s(f1(a1+a1,a1.and.a1.and.a1),a11);call sa(a11,5);a11=0
 write(35,*)f1(a1+a1,a1.and.a1.and.a1)
 rewind 35;read (35,*) a11;call sa(a11,5);a11=0
!
 call sa(f1(a1+a1,a1.and.a1.and.a1)+f1(a1+a1,a1.and.a1.and.a1),10)
 call s(f1(a1+a1,a1.and.a1.and.a1)+f1(a1+a1,a1.and.a1.and.a1),a11);call sa(a11,10);a11=0
 write(36,*)f1(a1+a1,a1.and.a1.and.a1)+f1(a1+a1,a1.and.a1.and.a1)
 rewind 36;read (36,*) a11;call sa(a11,10);a11=0
!
 call sa(f1(f1(a1+a1,a1.and.a1.and.a1),f1(a1+a1,a1.and.a1.and.a1)),10)
 call s(f1(f1(a1+a1,a1.and.a1.and.a1),f1(a1+a1,a1.and.a1.and.a1)),a11);call sa(a11,10);a11=0
 write(37,*)f1(f1(a1+a1,a1.and.a1.and.a1),f1(a1+a1,a1.and.a1.and.a1))
 rewind 37;read (37,*) a11;call sa(a11,10);a11=0
!
 call sa(f1(f1(a1+a1,a1.and.a1.and.a1)+f1(a1+a1,a1.and.a1.and.a1),&
            f1(a1+a1,a1.and.a1.and.a1)+f1(a1+a1,a1.and.a1.and.a1)),20)
 call s(f1(f1(a1+a1,a1.and.a1.and.a1)+f1(a1+a1,a1.and.a1.and.a1),&
            f1(a1+a1,a1.and.a1.and.a1)+f1(a1+a1,a1.and.a1.and.a1)),a11);call sa(a11,20);a11=0
 write(38,*)&
        f1(f1(a1+a1,a1.and.a1.and.a1)+f1(a1+a1,a1.and.a1.and.a1),&
            f1(a1+a1,a1.and.a1.and.a1)+f1(a1+a1,a1.and.a1.and.a1))
 rewind 38;read (38,*) a11;call sa(a11,20);a11=0
 end
