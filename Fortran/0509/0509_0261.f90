module m1
  type a
    integer::a1=1
    integer,allocatable::a2(:,:)
  end type
procedure(f1),pointer::pf1
procedure(f1a),pointer::pf1a
procedure(f1b),pointer::pf1b
procedure(f1e),pointer::pf1e
procedure(f2),pointer::pf2
procedure(f2a),pointer::pf2a
procedure(f2b),pointer::pf2b
procedure(f2e),pointer::pf2e
  interface gen1
    procedure pf1,pf1a,pf1b,pf1e
  end interface
  interface gen2
     procedure pf2,pf2a,pf2b,pf2e
  end interface
  integer,save::var(6000)
   interface operator(/=)
     module procedure struct_chk
   end interface
  integer::x(-5:-1),x1(-10:-9),x2(3:5),x3(-104:-101)
  integer::xx(2,3)
  integer::xxx(1,1,3)
  integer::k=5
  integer y1(-2:-1,3),y2(4,3,2),y3(2,3,2,3),y4(2,1,1,1,3),y5(2,1,1,2,1,2)
  contains
  subroutine s2
  if (any(f1(x)/=var(1:7)))print *,'fail'
  if (size(f1(x))/=7)print *,'fail'
  if (any(lbound(f1(x))/=1))print *,'fail'
  if (any(ubound(f1(x))/=7))print *,'fail'
  if (any(f2(x)/=var(1:7)))print *,'fail'
  if (size(f2(x))/=7)print *,'fail'
  if (any(lbound(f2(x))/=1))print *,'fail'
  if (any(ubound(f2(x))/=7))print *,'fail'
  if (any(gen1(x)/=var(1:7)))print *,'fail'
  if (size(gen1(x))/=7)print *,'fail'
  if (any(lbound(gen1(x))/=1))print *,'fail'
  if (any(ubound(gen1(x))/=7))print *,'fail'
  if (any(gen2(x)/=var(1:7)))print *,'fail'
  if (size(gen2(x))/=7)print *,'fail'
  if (any(lbound(gen2(x))/=1))print *,'fail'
  if (any(ubound(gen2(x))/=7))print *,'fail'
  if (any(in(x)/=var(1:7)))print *,'fail'
  if (size(in(x))/=7)print *,'fail'
  if (any(lbound(in(x))/=1))print *,'fail'
  if (any(ubound(in(x))/=7))print *,'fail'
  if (any(f1a(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(f1a(xx))/=6*8)print *,'fail'
  if (any(lbound(f1a(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(f1a(xx))/=(/6,8/)))print *,'fail'
  if (any(f2a(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(f2a(xx))/=48)print *,'fail'
  if (any(lbound(f2a(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(f2a(xx))/=(/6,8/)))print *,'fail'
  if (any(gen1(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(gen1(xx))/=48)print *,'fail'
  if (any(lbound(gen1(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(gen1(xx))/=(/6,8/)))print *,'fail'
  if (any(gen2(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(gen2(xx))/=48)print *,'fail'
  if (any(lbound(gen2(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(gen2(xx))/=(/6,8/)))print *,'fail'
  if (any(in2(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(in2(xx))/=48)print *,'fail'
  if (any(lbound(in2(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(in2(xx))/=(/6,8/)))print *,'fail'
  if (any(f1b(xxx)/=reshape(var(1:70),(/2,5,7/))))print *,'fail'
  if (size(f1b(xxx))/=70)print *,'fail'
  if (any(lbound(f1b(xxx))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f1b(xxx))/=(/2,5,7/)))print *,'fail'
  if (any(in3(xxx)/=reshape(var(1:70),(/2,5,7/))))print *,'fail'
  if (size(in3(xxx))/=70)print *,'fail'
  if (any(lbound(in3(xxx))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(in3(xxx))/=(/2,5,7/)))print *,'fail'
  if (any(f2b(xxx)/=reshape(var(1:70),(/2,5,7/))))print *,'fail'
  if (size(f2b(xxx))/=70)print *,'fail'
  if (any(lbound(f2b(xxx))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f2b(xxx))/=(/2,5,7/)))print *,'fail'
  if (any(in4(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(in4(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(in4(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(in4(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(f1c(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f1c(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(f1c(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f1c(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(f2c(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f2c(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(f2c(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f2c(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(in5(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(in5(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(in5(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(in5(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(f1e(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(f1e(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(f1e(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(f1e(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(f2e(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(f2e(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(f2e(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(f2e(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(gen1(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(gen1(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(gen1(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(gen1(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(gen2(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(gen2(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(gen2(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(gen2(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(in6(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(in6(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(in6(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(in6(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(in7(x1,x2,x3,4)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(in7(x1,x2,x3,4))/=120)print *,'fail'
  if (any(lbound(in7(x1,x2,x3,4))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(in7(x1,x2,x3,4))/=(/3,5,8/)))print *,'fail'
  if (any(f1f(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f1f(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(f1f(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f1f(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(f2f(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f2f(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(f2f(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f2f(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(f1g(x1,x2,x3,4)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f1g(x1,x2,x3,4))/=120)print *,'fail'
  if (any(lbound(f1g(x1,x2,x3,4))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f1g(x1,x2,x3,4))/=(/3,5,8/)))print *,'fail'
  if (any(f2g(x1,x2,x3,4)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f2g(x1,x2,x3,4))/=120)print *,'fail'
  if (any(lbound(f2g(x1,x2,x3,4))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f2g(x1,x2,x3,4))/=(/3,5,8/)))print *,'fail'
   contains
    function in(d) result(r)
    integer::d(5:)
    integer::r(-1:size(d))
    r=(/(var(i),i=1,2+size(d))/)
    end function
    function in2(d) result(r)
    integer::d(5:,5:)
    integer::r(size(d):11,-1:size(d))
    r=reshape((/(var(i),i=1,100)/),(/6,8/))
    end function
    function in3(d) result(r)
    integer::d(5:,5:,4:)
    integer::r(size(d):4,-1:size(d),-size(d):+size(d))
    r=reshape((/(var(i),i=1,100)/),(/2,5,7/))
    end function
    function in4(d1,d2,d3) result(r)
    integer::d1(5:),d2(-1:),d3(:)
    integer::r(size(d1):4,-1:size(d2), -3: size(d3))
    r=reshape((/(var(i),i=1,120)/),(/3,5,8/))
    end function
    function in5(d1,d2,d3,d4,d5) result(r)
    integer::d1(5:,:),d2(-1:,:,:),d3(:,:,:,:),d4(:,:,:,:,:),d5(-1:,-1:,-1:,-1:,-1:,-1:)
    integer::r(size(d1):11,size(d2):size(d3), -2: size(d4),size(d5))
    r=reshape((/(var(i),i=1,5616)/),(/6,13,9,8/))
    end function
    function in6(d1,d2,d3) result(r)
    integer::d1(5:),d2(-1:),d3(4)
    integer::r(size(d1):4,-1:size(d2), -3: size(d3))
    r=reshape((/(var(i),i=1,120)/),(/3,5,8/))
    end function
    function in7(d1,d2,d3,i4) result(r)
    integer::d1(5:),d2(-1:),d3(i4)
    integer::r(size(d1):4,-1:size(d2), -3: size(d3))
    r=reshape((/(var(i),i=1,120)/),(/3,5,8/))
    end function
  end subroutine
  function f1(d) result(r)
  entry    f2(d) result(r)
  integer::d(5:)
  integer::r(-1:size(d))
  r=(/(var(i),i=1,2+size(d))/)
  end function
  function f1a(d) result(r)
  entry    f2a(d) result(r)
  integer::d(5:,5:)
  integer::r(size(d):11,-1:size(d))
  r=reshape((/(var(i),i=1,100)/),(/6,8/))
  end function
  function f1b(d) result(r)
  entry    f2b(d) result(r)
  integer::d(5:,5:,4:)
  integer::r(size(d):4,-1:size(d),-size(d):+size(d))
  r=reshape((/(var(i),i=1,100)/),(/2,5,7/))
  end function
  function f1c(d1,d2,d3) result(r)
  entry    f2c(d1,d2,d3) result(r)
  integer::d1(5:),d2(-1:),d3(:)
  integer::r(size(d1):4,-1:size(d2), -3: size(d3))
  r=reshape((/(var(i),i=1,120)/),(/3,5,8/))
  end function
  function f1d(d1,d2,d3,d4,d5) result(r)
  entry    f2d(d1,d2,d3,d4,d5) result(r)
  integer::d1(5:,:),d2(-1:,:,:),d3(:,:,:,:),d4(:,:,:,:,:),d5(-1:,-1:,-1:,-1:,-1:,-1:)
  integer::r(size(d1):7,size(d2):size(d3), -2: size(d4),size(d5))
  r=reshape((/(var(i),i=1,5616)/),(/6,13,9,8/))
  end function
  function f1e(d1,d2,d3,d4,d5) result(r)
  entry    f2e(d1,d2,d3,d4,d5) result(r)
  integer::d1(5:,:),d2(-1:,:,:),d3(:,:,:,:),d4(:,:,:,:,:),d5(-1:,-1:,-1:,-1:,-1:,-1:)
  integer::r(size(d1):11,size(d2):size(d3), -2: size(d4),size(d5))
  r=reshape((/(var(i),i=1,5616)/),(/6,13,9,8/))
  end function
  function f1f(d1,d2,d3) result(r)
  entry    f2f(d1,d2,d3) result(r)
  integer::d1(5:),d2(-1:),d3(4)
  integer::r(size(d1):4,-1:size(d2), -3: size(d3))
  r=reshape((/(var(i),i=1,120)/),(/3,5,8/))
  end function
  function f1g(d1,d2,d3,i4) result(r)
  entry    f2g(d1,d2,d3,i4) result(r)
  integer::d1(5:),d2(-1:),d3(i4)
  integer::r(size(d1):4,-1:size(d2), -3: size(d3))
  r=reshape((/(var(i),i=1,120)/),(/3,5,8/))
  end function
  elemental function struct_chk(d1,d2) result(chk)
  type(a),intent(in)::d1,d2
  logical chk
  chk=d1%a1/=d2%a1
  if (allocated(d1%a2))chk=.true.
  if (allocated(d2%a2))chk=.true.
  end function
  subroutine s3
  if (any(f1(x)/=var(1:7)))print *,'fail'
  if (size(f1(x))/=7)print *,'fail'
  if (any(lbound(f1(x))/=1))print *,'fail'
  if (any(ubound(f1(x))/=7))print *,'fail'
  if (any(f2(x)/=var(1:7)))print *,'fail'
  if (size(f2(x))/=7)print *,'fail'
  if (any(lbound(f2(x))/=1))print *,'fail'
  if (any(ubound(f2(x))/=7))print *,'fail'
  if (any(gen1(x)/=var(1:7)))print *,'fail'
  if (size(gen1(x))/=7)print *,'fail'
  if (any(lbound(gen1(x))/=1))print *,'fail'
  if (any(ubound(gen1(x))/=7))print *,'fail'
  if (any(gen2(x)/=var(1:7)))print *,'fail'
  if (size(gen2(x))/=7)print *,'fail'
  if (any(lbound(gen2(x))/=1))print *,'fail'
  if (any(ubound(gen2(x))/=7))print *,'fail'
  if (any(in(x)/=var(1:7)))print *,'fail'
  if (size(in(x))/=7)print *,'fail'
  if (any(lbound(in(x))/=1))print *,'fail'
  if (any(ubound(in(x))/=7))print *,'fail'
  if (any(f1a(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(f1a(xx))/=6*8)print *,'fail'
  if (any(lbound(f1a(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(f1a(xx))/=(/6,8/)))print *,'fail'
  if (any(f2a(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(f2a(xx))/=48)print *,'fail'
  if (any(lbound(f2a(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(f2a(xx))/=(/6,8/)))print *,'fail'
  if (any(gen1(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(gen1(xx))/=48)print *,'fail'
  if (any(lbound(gen1(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(gen1(xx))/=(/6,8/)))print *,'fail'
  if (any(gen2(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(gen2(xx))/=48)print *,'fail'
  if (any(lbound(gen2(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(gen2(xx))/=(/6,8/)))print *,'fail'
  if (any(in2(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(in2(xx))/=48)print *,'fail'
  if (any(lbound(in2(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(in2(xx))/=(/6,8/)))print *,'fail'
  if (any(f1b(xxx)/=reshape(var(1:70),(/2,5,7/))))print *,'fail'
  if (size(f1b(xxx))/=70)print *,'fail'
  if (any(lbound(f1b(xxx))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f1b(xxx))/=(/2,5,7/)))print *,'fail'
  if (any(in3(xxx)/=reshape(var(1:70),(/2,5,7/))))print *,'fail'
  if (size(in3(xxx))/=70)print *,'fail'
  if (any(lbound(in3(xxx))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(in3(xxx))/=(/2,5,7/)))print *,'fail'
  if (any(f2b(xxx)/=reshape(var(1:70),(/2,5,7/))))print *,'fail'
  if (size(f2b(xxx))/=70)print *,'fail'
  if (any(lbound(f2b(xxx))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f2b(xxx))/=(/2,5,7/)))print *,'fail'
  if (any(in4(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(in4(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(in4(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(in4(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(f1c(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f1c(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(f1c(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f1c(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(f2c(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f2c(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(f2c(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f2c(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(in5(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(in5(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(in5(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(in5(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(f1e(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(f1e(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(f1e(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(f1e(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(f2e(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(f2e(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(f2e(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(f2e(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(gen1(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(gen1(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(gen1(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(gen1(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(gen2(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(gen2(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(gen2(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(gen2(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(in6(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(in6(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(in6(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(in6(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(in7(x1,x2,x3,4)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(in7(x1,x2,x3,4))/=120)print *,'fail'
  if (any(lbound(in7(x1,x2,x3,4))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(in7(x1,x2,x3,4))/=(/3,5,8/)))print *,'fail'
  if (any(f1f(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f1f(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(f1f(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f1f(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(f2f(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f2f(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(f2f(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f2f(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(f1g(x1,x2,x3,4)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f1g(x1,x2,x3,4))/=120)print *,'fail'
  if (any(lbound(f1g(x1,x2,x3,4))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f1g(x1,x2,x3,4))/=(/3,5,8/)))print *,'fail'
  if (any(f2g(x1,x2,x3,4)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f2g(x1,x2,x3,4))/=120)print *,'fail'
  if (any(lbound(f2g(x1,x2,x3,4))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f2g(x1,x2,x3,4))/=(/3,5,8/)))print *,'fail'
   contains
    function in(d) result(r)
    integer::d(5:)
    integer::r(-1:size(d))
    r=(/(var(i),i=1,2+size(d))/)
    end function
    function in2(d) result(r)
    integer::d(5:,5:)
    integer::r(size(d):11,-1:size(d))
    r=reshape((/(var(i),i=1,100)/),(/6,8/))
    end function
    function in3(d) result(r)
    integer::d(5:,5:,4:)
    integer::r(size(d):4,-1:size(d),-size(d):+size(d))
    r=reshape((/(var(i),i=1,100)/),(/2,5,7/))
    end function
    function in4(d1,d2,d3) result(r)
    integer::d1(5:),d2(-1:),d3(:)
    integer::r(size(d1):4,-1:size(d2), -3: size(d3))
    r=reshape((/(var(i),i=1,120)/),(/3,5,8/))
    end function
    function in5(d1,d2,d3,d4,d5) result(r)
    integer::d1(5:,:),d2(-1:,:,:),d3(:,:,:,:),d4(:,:,:,:,:),d5(-1:,-1:,-1:,-1:,-1:,-1:)
    integer::r(size(d1):11,size(d2):size(d3), -2: size(d4),size(d5))
    r=reshape((/(var(i),i=1,5616)/),(/6,13,9,8/))
    end function
    function in6(d1,d2,d3) result(r)
    integer::d1(5:),d2(-1:),d3(4)
    integer::r(size(d1):4,-1:size(d2), -3: size(d3))
    r=reshape((/(var(i),i=1,120)/),(/3,5,8/))
    end function
    function in7(d1,d2,d3,i4) result(r)
    integer::d1(5:),d2(-1:),d3(i4)
    integer::r(size(d1):4,-1:size(d2), -3: size(d3))
    r=reshape((/(var(i),i=1,120)/),(/3,5,8/))
    end function
  end subroutine
end
module m2
use m1
contains
subroutine s1
if (any(f1(x)/=var(1:7)))print *,'fail'
if (size(f1(x))/=7)print *,'fail'
if (any(lbound(f1(x))/=1))print *,'fail'
if (any(ubound(f1(x))/=7))print *,'fail'
if (any(f2(x)/=var(1:7)))print *,'fail'
if (size(f2(x))/=7)print *,'fail'
if (any(lbound(f2(x))/=1))print *,'fail'
if (any(ubound(f2(x))/=7))print *,'fail'
if (any(gen1(x)/=var(1:7)))print *,'fail'
if (size(gen1(x))/=7)print *,'fail'
if (any(lbound(gen1(x))/=1))print *,'fail'
if (any(ubound(gen1(x))/=7))print *,'fail'
if (any(gen2(x)/=var(1:7)))print *,'fail'
if (size(gen2(x))/=7)print *,'fail'
if (any(lbound(gen2(x))/=1))print *,'fail'
if (any(ubound(gen2(x))/=7))print *,'fail'
  if (any(in(x)/=var(1:7)))print *,'fail'
  if (size(in(x))/=7)print *,'fail'
  if (any(lbound(in(x))/=1))print *,'fail'
  if (any(ubound(in(x))/=7))print *,'fail'
  if (any(f1a(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(f1a(xx))/=6*8)print *,'fail'
  if (any(lbound(f1a(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(f1a(xx))/=(/6,8/)))print *,'fail'
  if (any(f2a(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(f2a(xx))/=48)print *,'fail'
  if (any(lbound(f2a(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(f2a(xx))/=(/6,8/)))print *,'fail'
  if (any(gen1(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(gen1(xx))/=48)print *,'fail'
  if (any(lbound(gen1(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(gen1(xx))/=(/6,8/)))print *,'fail'
  if (any(gen2(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(gen2(xx))/=48)print *,'fail'
  if (any(lbound(gen2(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(gen2(xx))/=(/6,8/)))print *,'fail'
  if (any(in2(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(in2(xx))/=48)print *,'fail'
  if (any(lbound(in2(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(in2(xx))/=(/6,8/)))print *,'fail'
  if (any(f1b(xxx)/=reshape(var(1:70),(/2,5,7/))))print *,'fail'
  if (size(f1b(xxx))/=70)print *,'fail'
  if (any(lbound(f1b(xxx))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f1b(xxx))/=(/2,5,7/)))print *,'fail'
  if (any(in3(xxx)/=reshape(var(1:70),(/2,5,7/))))print *,'fail'
  if (size(in3(xxx))/=70)print *,'fail'
  if (any(lbound(in3(xxx))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(in3(xxx))/=(/2,5,7/)))print *,'fail'
  if (any(f2b(xxx)/=reshape(var(1:70),(/2,5,7/))))print *,'fail'
  if (size(f2b(xxx))/=70)print *,'fail'
  if (any(lbound(f2b(xxx))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f2b(xxx))/=(/2,5,7/)))print *,'fail'
  if (any(in4(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(in4(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(in4(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(in4(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(f1c(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f1c(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(f1c(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f1c(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(f2c(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f2c(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(f2c(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f2c(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(in5(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(in5(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(in5(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(in5(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(f1e(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(f1e(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(f1e(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(f1e(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(f2e(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(f2e(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(f2e(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(f2e(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(gen1(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(gen1(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(gen1(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(gen1(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(gen2(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(gen2(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(gen2(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(gen2(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(in6(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(in6(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(in6(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(in6(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(in7(x1,x2,x3,4)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(in7(x1,x2,x3,4))/=120)print *,'fail'
  if (any(lbound(in7(x1,x2,x3,4))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(in7(x1,x2,x3,4))/=(/3,5,8/)))print *,'fail'
  if (any(f1f(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f1f(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(f1f(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f1f(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(f2f(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f2f(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(f2f(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f2f(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(f1g(x1,x2,x3,4)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f1g(x1,x2,x3,4))/=120)print *,'fail'
  if (any(lbound(f1g(x1,x2,x3,4))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f1g(x1,x2,x3,4))/=(/3,5,8/)))print *,'fail'
  if (any(f2g(x1,x2,x3,4)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f2g(x1,x2,x3,4))/=120)print *,'fail'
  if (any(lbound(f2g(x1,x2,x3,4))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f2g(x1,x2,x3,4))/=(/3,5,8/)))print *,'fail'
   contains
    function in(d) result(r)
    integer::d(5:)
    integer::r(-1:size(d))
    r=(/(var(i),i=1,2+size(d))/)
    end function
    function in2(d) result(r)
    integer::d(5:,5:)
    integer::r(size(d):11,-1:size(d))
    r=reshape((/(var(i),i=1,100)/),(/6,8/))
    end function
    function in3(d) result(r)
    integer::d(5:,5:,4:)
    integer::r(size(d):4,-1:size(d),-size(d):+size(d))
    r=reshape((/(var(i),i=1,100)/),(/2,5,7/))
    end function
    function in4(d1,d2,d3) result(r)
    integer::d1(5:),d2(-1:),d3(:)
    integer::r(size(d1):4,-1:size(d2), -3: size(d3))
    r=reshape((/(var(i),i=1,120)/),(/3,5,8/))
    end function
    function in5(d1,d2,d3,d4,d5) result(r)
    integer::d1(5:,:),d2(-1:,:,:),d3(:,:,:,:),d4(:,:,:,:,:),d5(-1:,-1:,-1:,-1:,-1:,-1:)
    integer::r(size(d1):11,size(d2):size(d3), -2: size(d4),size(d5))
    r=reshape((/(var(i),i=1,5616)/),(/6,13,9,8/))
    end function
    function in6(d1,d2,d3) result(r)
    integer::d1(5:),d2(-1:),d3(4)
    integer::r(size(d1):4,-1:size(d2), -3: size(d3))
    r=reshape((/(var(i),i=1,120)/),(/3,5,8/))
    end function
    function in7(d1,d2,d3,i4) result(r)
    integer::d1(5:),d2(-1:),d3(i4)
    integer::r(size(d1):4,-1:size(d2), -3: size(d3))
    r=reshape((/(var(i),i=1,120)/),(/3,5,8/))
    end function
end subroutine
end
use m2
pf1=>f1
pf1a=>f1a
pf1b=>f1b
pf1e=>f1e
pf2=>f2
pf2a=>f2a
pf2b=>f2b
pf2e=>f2e
var=(/(i, i=1,6000)/)
if (any(f1(x)/=var(1:7)))print *,'fail'
if (size(f1(x))/=7)print *,'fail'
if (any(lbound(f1(x))/=1))print *,'fail'
if (any(ubound(f1(x))/=7))print *,'fail'
if (any(f2(x)/=var(1:7)))print *,'fail'
if (size(f2(x))/=7)print *,'fail'
if (any(lbound(f2(x))/=1))print *,'fail'
if (any(ubound(f2(x))/=7))print *,'fail'
if (any(gen1(x)/=var(1:7)))print *,'fail'
if (size(gen1(x))/=7)print *,'fail'
if (any(lbound(gen1(x))/=1))print *,'fail'
if (any(ubound(gen1(x))/=7))print *,'fail'
if (any(gen2(x)/=var(1:7)))print *,'fail'
if (size(gen2(x))/=7)print *,'fail'
if (any(lbound(gen2(x))/=1))print *,'fail'
if (any(ubound(gen2(x))/=7))print *,'fail'
  if (any(in(x)/=var(1:7)))print *,'fail'
  if (size(in(x))/=7)print *,'fail'
  if (any(lbound(in(x))/=1))print *,'fail'
  if (any(ubound(in(x))/=7))print *,'fail'
  if (any(f1a(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(f1a(xx))/=6*8)print *,'fail'
  if (any(lbound(f1a(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(f1a(xx))/=(/6,8/)))print *,'fail'
  if (any(f2a(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(f2a(xx))/=48)print *,'fail'
  if (any(lbound(f2a(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(f2a(xx))/=(/6,8/)))print *,'fail'
  if (any(gen1(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(gen1(xx))/=48)print *,'fail'
  if (any(lbound(gen1(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(gen1(xx))/=(/6,8/)))print *,'fail'
  if (any(gen2(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(gen2(xx))/=48)print *,'fail'
  if (any(lbound(gen2(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(gen2(xx))/=(/6,8/)))print *,'fail'
  if (any(in2(xx)/=reshape(var(1:48),(/6,8/))))print *,'fail'
  if (size(in2(xx))/=48)print *,'fail'
  if (any(lbound(in2(xx))/=(/1,1/)))print *,'fail'
  if (any(ubound(in2(xx))/=(/6,8/)))print *,'fail'
  if (any(f1b(xxx)/=reshape(var(1:70),(/2,5,7/))))print *,'fail'
  if (size(f1b(xxx))/=70)print *,'fail'
  if (any(lbound(f1b(xxx))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f1b(xxx))/=(/2,5,7/)))print *,'fail'
  if (any(in3(xxx)/=reshape(var(1:70),(/2,5,7/))))print *,'fail'
  if (size(in3(xxx))/=70)print *,'fail'
  if (any(lbound(in3(xxx))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(in3(xxx))/=(/2,5,7/)))print *,'fail'
  if (any(f2b(xxx)/=reshape(var(1:70),(/2,5,7/))))print *,'fail'
  if (size(f2b(xxx))/=70)print *,'fail'
  if (any(lbound(f2b(xxx))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f2b(xxx))/=(/2,5,7/)))print *,'fail'
  if (any(in4(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(in4(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(in4(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(in4(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(f1c(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f1c(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(f1c(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f1c(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(f2c(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f2c(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(f2c(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f2c(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(in5(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(in5(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(in5(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(in5(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(f1e(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(f1e(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(f1e(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(f1e(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(f2e(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(f2e(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(f2e(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(f2e(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(gen1(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(gen1(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(gen1(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(gen1(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(gen2(y1,y2,y3,y4,y5)/=reshape(var(1:5616),(/6,13,9,8/))))print *,'fail'
  if (size(gen2(y1,y2,y3,y4,y5))/=5616)print *,'fail'
  if (any(lbound(gen2(y1,y2,y3,y4,y5))/=(/1,1,1,1/)))print *,'fail'
  if (any(ubound(gen2(y1,y2,y3,y4,y5))/=(/6,13,9,8/)))print *,'fail'
  if (any(in6(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(in6(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(in6(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(in6(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(in7(x1,x2,x3,4)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(in7(x1,x2,x3,4))/=120)print *,'fail'
  if (any(lbound(in7(x1,x2,x3,4))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(in7(x1,x2,x3,4))/=(/3,5,8/)))print *,'fail'
  if (any(f1f(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f1f(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(f1f(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f1f(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(f2f(x1,x2,x3)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f2f(x1,x2,x3))/=120)print *,'fail'
  if (any(lbound(f2f(x1,x2,x3))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f2f(x1,x2,x3))/=(/3,5,8/)))print *,'fail'
  if (any(f1g(x1,x2,x3,4)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f1g(x1,x2,x3,4))/=120)print *,'fail'
  if (any(lbound(f1g(x1,x2,x3,4))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f1g(x1,x2,x3,4))/=(/3,5,8/)))print *,'fail'
  if (any(f2g(x1,x2,x3,4)/=reshape(var(1:120),(/3,5,8/))))print *,'fail'
  if (size(f2g(x1,x2,x3,4))/=120)print *,'fail'
  if (any(lbound(f2g(x1,x2,x3,4))/=(/1,1,1/)))print *,'fail'
  if (any(ubound(f2g(x1,x2,x3,4))/=(/3,5,8/)))print *,'fail'
call s1
call s2
call s3
print *,'pass'
   contains
    function in(d) result(r)
    integer::d(5:)
    integer::r(-1:size(d))
    r=(/(var(i),i=1,2+size(d))/)
    end function
    function in2(d) result(r)
    integer::d(5:,5:)
    integer::r(size(d):11,-1:size(d))
    r=reshape((/(var(i),i=1,100)/),(/6,8/))
    end function
    function in3(d) result(r)
    integer::d(5:,5:,4:)
    integer::r(size(d):4,-1:size(d),-size(d):+size(d))
    r=reshape((/(var(i),i=1,100)/),(/2,5,7/))
    end function
    function in4(d1,d2,d3) result(r)
    integer::d1(5:),d2(-1:),d3(:)
    integer::r(size(d1):4,-1:size(d2), -3: size(d3))
    r=reshape((/(var(i),i=1,120)/),(/3,5,8/))
    end function
    function in5(d1,d2,d3,d4,d5) result(r)
    integer::d1(5:,:),d2(-1:,:,:),d3(:,:,:,:),d4(:,:,:,:,:),d5(-1:,-1:,-1:,-1:,-1:,-1:)
    integer::r(size(d1):11,size(d2):size(d3), -2: size(d4),size(d5))
    r=reshape((/(var(i),i=1,5616)/),(/6,13,9,8/))
    end function
    function in6(d1,d2,d3) result(r)
    integer::d1(5:),d2(-1:),d3(4)
    integer::r(size(d1):4,-1:size(d2), -3: size(d3))
    r=reshape((/(var(i),i=1,120)/),(/3,5,8/))
    end function
    function in7(d1,d2,d3,i4) result(r)
    integer::d1(5:),d2(-1:),d3(i4)
    integer::r(size(d1):4,-1:size(d2), -3: size(d3))
    r=reshape((/(var(i),i=1,120)/),(/3,5,8/))
    end function
end
