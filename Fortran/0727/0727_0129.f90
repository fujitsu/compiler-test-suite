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
    character,intent(in)::x1,x2
    character::f1
    f1=x1//x2
    end function
    subroutine sa(x,j)
    character(*),dimension(:,:,:,:)::x
    if (any(shape(x)/=(/2,3,4,5/)))write(6,*) "NG"
    if (any(x(:,:,:,:)(:1)/='x'))write(6,*) "NG"
    end subroutine
    elemental subroutine s(x,y)
    character,intent(in)::x
    character,intent(out)::y
    y=x
    end subroutine
    elemental subroutine zero(a1,a2)
    character,intent(out)::a1
    integer,intent(in)::a2
    select case(a2)
      case(0);a1='0'
    end select
    end subroutine
    elemental function plus(x1,x2)
    character,intent(in)::x1,x2
    character(2)::plus
    plus=trim(x1)//trim(x2)
    end function
  end
 subroutine s1
 use m1
 character,pointer,dimension(:,:,:,:)::at,att
 character,pointer,dimension(:,:,:,:)::a1,a11
 allocate(at(4,6,8,10));at=0
 a1=>at(::2,::2,::2,::2);
 at(::2,::2,::2,::2)='x'
 allocate(att(4,6,8,10)); a11=>att(::2,::2,::2,::2)
!
 open (43,delim='quote')
 open (44,delim='quote')
 open (45,delim='quote')
 open (46,delim='quote')
 call sa(f1(a1+a1,a1//a1//a1),5)
 call s(f1(a1+a1,a1//a1//a1),a11);call sa(a11,5);a11=0
 write(43,*)f1(a1+a1,a1//a1//a1)
 rewind 43;read (43,*) a11;call sa(a11,5);a11=0
!
 call sa(f1(a1+a1,a1//a1//a1)+f1(a1+a1,a1//a1//a1),10)
 call s(f1(a1+a1,a1//a1//a1)+f1(a1+a1,a1//a1//a1),a11);call sa(a11,10);a11=0
 write(44,*)f1(a1+a1,a1//a1//a1)+f1(a1+a1,a1//a1//a1)
 rewind 44;read (44,*) a11;call sa(a11,10);a11=0
!
 call sa(f1(f1(a1+a1,a1//a1//a1),f1(a1+a1,a1//a1//a1)),10)
 call s(f1(f1(a1+a1,a1//a1//a1),f1(a1+a1,a1//a1//a1)),a11);call sa(a11,10);a11=0
 write(45,*)f1(f1(a1+a1,a1//a1//a1),f1(a1+a1,a1//a1//a1))
 rewind 45;read (45,*) a11;call sa(a11,10);a11=0
!
 call sa(f1(f1(a1+a1,a1//a1//a1)+f1(a1+a1,a1//a1//a1),&
            f1(a1+a1,a1//a1//a1)+f1(a1+a1,a1//a1//a1)),20)
 call s(f1(f1(a1+a1,a1//a1//a1)+f1(a1+a1,a1//a1//a1),&
            f1(a1+a1,a1//a1//a1)+f1(a1+a1,a1//a1//a1)),a11);call sa(a11,20);a11=0
 write(46,*)&
        f1(f1(a1+a1,a1//a1//a1)+f1(a1+a1,a1//a1//a1),&
            f1(a1+a1,a1//a1//a1)+f1(a1+a1,a1//a1//a1))
 rewind 46;read (46,*) a11;call sa(a11,20);a11=0
 end
