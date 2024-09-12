call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub06()
print *,"pass"
end

 module m1
  integer::i1=1,i2=2,i3=3,i4=4,i5=5
  integer,parameter::p1=1,p2=2,p3=3,p4=4,p5=5
  integer,parameter::n=1
  contains
  subroutine i4_4(a,j)
   character(n),dimension(i2,i3,i4,i5)::a
   integer i(p2,p3,p4,p5)
   integer j(p2,p3,p4,p5)
   i=1
   j=1
   a='a'
   call ss2(reshape(a, (/i2,i3,i4,i5/)))
   call ss1(reshape(i, (/i2,i3,i4,i5/)))
   call ss1(reshape(j, (/i2,i3,i4,i5/)))
   contains
    subroutine ss1(a)
    integer     ,dimension(2,3,4,5)::a,b
    b=a
    b=b
    end subroutine
    subroutine ss2(a)
    character(1),dimension(2,3,4,5)::a,b
    b=a
    b=b
    end subroutine
  end subroutine
 end

 subroutine sub01()
 use m1
 character(n),dimension(i2,i3,i4,i5)::aa
 integer bb(p2,p3,p4,p5)
 call i4_4(aa,bb)
 end

 module m2
  integer::i1=1,i2=2,i3=3,i4=4,i5=5
  integer,parameter::p1=1,p2=2,p3=3,p4=4,p5=5
  integer,parameter::n=1
  contains
  subroutine i4_4(a,j)
   character(n),dimension(p2,p3,p4,p5)::a
   integer i(i2,p3,i4,p5)
   integer j(p2,i3,p4,i5)
   i=1
   j=1
   a='a'
   call ss2(reshape(a, (/i2,i3,i4,i5/)))
   call ss1(reshape(i, (/i2,i3,i4,i5/)))
   call ss1(reshape(j, (/i2,i3,i4,i5/)))
   contains
    subroutine ss1(a)
    integer     ,dimension(2,3,4,5)::a,b
    b=a
    b=b
    end subroutine
    subroutine ss2(a)
    character(1),dimension(2,3,4,5)::a,b
    b=a
    b=b
    end subroutine
  end subroutine
 end

 subroutine sub02()
 use m2
 character(n),dimension(i2,i3,i4,i5)::aa
 integer bb(p2,p3,p4,p5)
 call i4_4(aa,bb)
 end

 module m3
  integer::i1=1,i2=2,i3=3,i4=4,i5=5
  integer,parameter::p1=1,p2=2,p3=3,p4=4,p5=5
  integer,parameter::n=1
  contains
  subroutine i4_4(a,j)
   character(i1),dimension(i2,i3,i4,i5)::a
   integer i(p2,p3,p4,i5)
   integer j(p2,p3,i4,i5)
   i=1
   j=1
   a='a'
   call ss2(reshape(a, (/i2,i3,i4,i5/)))
   call ss1(reshape(i, (/i2,i3,i4,i5/)))
   call ss1(reshape(j, (/i2,i3,i4,i5/)))
   contains
    subroutine ss1(a)
    integer     ,dimension(2,3,4,5)::a,b
    b=a
    b=b
    end subroutine
    subroutine ss2(a)
    character(1),dimension(2,3,4,5)::a,b
    b=a
    b=b
    end subroutine
  end subroutine
 end

 subroutine sub03()
 use m3
 character(n),dimension(i2,i3,i4,i5)::aa
 integer bb(p2,p3,p4,p5)
 call i4_4(aa,bb)
 end

 module m4
  integer::i1=1,i2=2,i3=3,i4=4,i5=5
  integer,parameter::p1=1,p2=2,p3=3,p4=4,p5=5
  integer,parameter::n=1
  contains
  subroutine i4_4(a,j)
   character(i1),dimension(p2,p3,p4,p5)::a
   integer i(i2,i3,i4,i5)
   integer j(p2,i3,i4,i5)
   i=1
   j=1
   a='a'
   call ss2(reshape(a, (/i2,i3,i4,i5/)))
   call ss1(reshape(i, (/i2,i3,i4,i5/)))
   call ss1(reshape(j, (/i2,i3,i4,i5/)))
   contains
    subroutine ss1(a)
    integer     ,dimension(2,3,4,5)::a,b
    b=a
    b=b
    end subroutine
    subroutine ss2(a)
    character(1),dimension(2,3,4,5)::a,b
    b=a
    b=b
    end subroutine
  end subroutine
 end

 subroutine sub04()
 use m4
 character(n),dimension(i2,i3,i4,i5)::aa
 integer bb(p2,p3,p4,p5)
 call i4_4(aa,bb)
 end

 module m5
  integer::i1=1,i2=2,i3=3,i4=4,i5=5
  integer,parameter::p1=1,p2=2,p3=3,p4=4,p5=5
  integer,parameter::n=1
  contains
  subroutine i4_4(a,j)
   character(n),dimension(p2,p3,p4,i5)::a
   integer i(p2,p3,p4,p5)
   integer j(p2,p3,p4,p5)
   i=1
   j=1
   a='a'
   call ss2(reshape(a, (/i2,i3,i4,i5/)))
   call ss1(reshape(i, (/i2,i3,i4,i5/)))
   call ss1(reshape(j, (/i2,i3,i4,i5/)))
   contains
    subroutine ss1(a)
    integer     ,dimension(2,3,4,5)::a,b
    b=a
    b=b
    end subroutine
    subroutine ss2(a)
    character(1),dimension(2,3,4,5)::a,b
    b=a
    b=b
    end subroutine
  end subroutine
 end

 subroutine sub05()
 use m5
 character(n),dimension(i2,i3,i4,i5)::aa
 integer bb(p2,p3,p4,p5)
 call i4_4(aa,bb)
 end

 module m6
  integer::i1=1,i2=2,i3=3,i4=4,i5=5
  integer,parameter::p1=1,p2=2,p3=3,p4=4,p5=5
  integer,parameter::n=1
  contains
  subroutine i4_4(a,j)
   character(n),dimension(p2,i3,i4,i5)::a
   integer i(p2,p3,p4,p5)
   integer j(p2,p3,p4,p5)
   i=1
   j=1
   a='a'
   call ss2(reshape(a, (/i2,i3,i4,i5/)))
   call ss1(reshape(i, (/i2,i3,i4,i5/)))
   call ss1(reshape(j, (/i2,i3,i4,i5/)))
   contains
    subroutine ss1(a)
    integer     ,dimension(2,3,4,5)::a,b
    b=a
    b=b
    end subroutine
    subroutine ss2(a)
    character(1),dimension(2,3,4,5)::a,b
    b=a
    b=b
    end subroutine
  end subroutine
 end

 subroutine sub06()
 use m6
 character(n),dimension(i2,i3,i4,i5)::aa
 integer bb(p2,p3,p4,p5)
 call i4_4(aa,bb)
 end

