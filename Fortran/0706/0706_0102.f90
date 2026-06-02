c
c
      call s1
      print *,'pass'
      end
      module type
       type ty; character*3 i ; character*3 a(2); end type 
      end module
      module cnt  
       character(len=*),parameter:: c= char(i char('1'))//
     1                                achar(iachar('2'))//
     1                                achar(i char('3'))
       character(len=len(c)),target 
     1                           :: t= char(i char('1'))//
     1                                achar(iachar('2'))//
     1                                achar(i char('3'))
      end module
      module data 
       integer,parameter::u=-1,l=-2
       character(len=*),dimension(l:u),parameter::x1=
     1  (/ char(i char('a'))//achar(iachar('b'))//achar(i char('c')), 
     1     char(i char('d'))//achar(iachar('e'))//achar(i char('f'))/)
       character(len=len(x1)),dimension(l:u),target   ::x2=
     1  (/ char(i char('a'))//achar(iachar('b'))//achar(i char('c')), 
     1     char(i char('d'))//achar(iachar('e'))//achar(i char('f'))/)
      end module
      module chk_m
      use type;use cnt
      contains
       subroutine chk(d)
        type(ty)::d
        if (d%i/='123')print *,'fail'
        if (any(d%a/=(/'abc','def'/)))print *,'fail'
       end subroutine
      end module
      subroutine s1
       use data
       interface
       subroutine t1(j,x3,x4,x5,x6,x7,x8,x9,xa,xb)
       character*(3):: p;pointer(ip,p)
       character*(3),pointer:: g
       character*(3)::x3(:)
       character*(*)::x4(:)
       character*(j)::x5(:)
       character*(3)::x6(j-1)
       character*(*)::x7(j-1)
       character*(j)::x8(j-1)
       character*(3),pointer::x9(:)
       character*(*),pointer::xa(:)
       character*(j),pointer::xb(:)
       end subroutine
       end interface
       parameter (j=3)
       character*(3)::x3(2)
       character*(3)::x4(2)
       character*(j)::x5(2)
       character*(3)::x6(j-1)
       character*(3)::x7(j-1)
       character*(j)::x8(j-1)
       character*(3),pointer::x9(:)
       character*(3),pointer::xa(:)
       character*(j),pointer::xb(:)
       allocate (x9(l:u),xa(l:u),xb(l:u))
       x3=x1;x4=x1;x5=x1;x6=x1;x7=x1;x8=x1;x9=x1;xa=x1;xb=x1
      call       t1(j,x3,x4,x5,x6,x7,x8,x9,xa,xb)
      end      
      subroutine t1(j,x3,x4,x5,x6,x7,x8,x9,xa,xb)
       use type;use cnt;use data;use chk_m
       type (ty) :: st
       character*(3):: p;pointer(ip,p)
       character*(3),pointer:: g
       character*(3)::x3(l:)
       character*(*)::x4(l:)
       character*(j)::x5(l:)
       character*(3)::x6(l:j-4)
       character*(*)::x7(l:j-4)
       character*(j)::x8(l:j-4)
       character*(3),pointer::x9(:)
       character*(*),pointer::xa(:)
       character*(j),pointer::xb(:)
       integer,pointer,dimension(:)::v
       allocate(v(l:u));v(l)=l;v(u)=u
       ip=loc(t);g=>t
       st= ty(c ,(/x1/));call chk(st)
       st= ty(t ,(/x1/));call chk(st)
       st= ty(p ,(/x1/));call chk(st)
       st= ty(g ,(/x1/));call chk(st)
       st= ty(c ,(/x2/));call chk(st)
       st= ty(t ,(/x2/));call chk(st)
       st= ty(p ,(/x2/));call chk(st)
       st= ty(g ,(/x2/));call chk(st)
       st= ty(c ,(/x3/));call chk(st)
       st= ty(t ,(/x3/));call chk(st)
       st= ty(p ,(/x3/));call chk(st)
       st= ty(g ,(/x3/));call chk(st)
       st= ty(c ,(/x4/));call chk(st)
       st= ty(t ,(/x4/));call chk(st)
       st= ty(p ,(/x4/));call chk(st)
       st= ty(g ,(/x4/));call chk(st)
       st= ty(c ,(/x5/));call chk(st)
       st= ty(t ,(/x5/));call chk(st)
       st= ty(p ,(/x5/));call chk(st)
       st= ty(g ,(/x5/));call chk(st)
       st= ty(c ,(/x6/));call chk(st)
       st= ty(t ,(/x6/));call chk(st)
       st= ty(p ,(/x6/));call chk(st)
       st= ty(g ,(/x6/));call chk(st)
       st= ty(c ,(/x7/));call chk(st)
       st= ty(t ,(/x7/));call chk(st)
       st= ty(p ,(/x7/));call chk(st)
       st= ty(g ,(/x7/));call chk(st)
       st= ty(c ,(/x8/));call chk(st)
       st= ty(t ,(/x8/));call chk(st)
       st= ty(p ,(/x8/));call chk(st)
       st= ty(g ,(/x8/));call chk(st)
       st= ty(c ,(/x9/));call chk(st)
       st= ty(t ,(/x9/));call chk(st)
       st= ty(p ,(/x9/));call chk(st)
       st= ty(g ,(/x9/));call chk(st)
       st= ty(c ,(/xa/));call chk(st)
       st= ty(t ,(/xa/));call chk(st)
       st= ty(p ,(/xa/));call chk(st)
       st= ty(g ,(/xa/));call chk(st)
       st= ty(c ,(/xa/));call chk(st)
       st= ty(t ,(/xb/));call chk(st)
       st= ty(p ,(/xb/));call chk(st)
       st= ty(g ,(/xb/));call chk(st)
       st= ty(c ,(/x1(v)/));call chk(st)
       st= ty(t ,(/x1(v)/));call chk(st)
       st= ty(p ,(/x1(v)/));call chk(st)
       st= ty(g ,(/x1(v)/));call chk(st)
       st= ty(c ,(/x2(v)/));call chk(st)
       st= ty(t ,(/x2(v)/));call chk(st)
       st= ty(p ,(/x2(v)/));call chk(st)
       st= ty(g ,(/x2(v)/));call chk(st)
       st= ty(c ,(/x3(v)/));call chk(st)
       st= ty(t ,(/x3(v)/));call chk(st)
       st= ty(p ,(/x3(v)/));call chk(st)
       st= ty(g ,(/x3(v)/));call chk(st)
       st= ty(c ,(/x4(v)/));call chk(st)
       st= ty(t ,(/x4(v)/));call chk(st)
       st= ty(p ,(/x4(v)/));call chk(st)
       st= ty(g ,(/x4(v)/));call chk(st)
       st= ty(c ,(/x5(v)/));call chk(st)
       st= ty(t ,(/x5(v)/));call chk(st)
       st= ty(p ,(/x5(v)/));call chk(st)
       st= ty(g ,(/x5(v)/));call chk(st)
       st= ty(c ,(/x6(v)/));call chk(st)
       st= ty(t ,(/x6(v)/));call chk(st)
       st= ty(p ,(/x6(v)/));call chk(st)
       st= ty(g ,(/x6(v)/));call chk(st)
       st= ty(c ,(/x7(v)/));call chk(st)
       st= ty(t ,(/x7(v)/));call chk(st)
       st= ty(p ,(/x7(v)/));call chk(st)
       st= ty(g ,(/x7(v)/));call chk(st)
       st= ty(c ,(/x8(v)/));call chk(st)
       st= ty(t ,(/x8(v)/));call chk(st)
       st= ty(p ,(/x8(v)/));call chk(st)
       st= ty(g ,(/x8(v)/));call chk(st)
       st= ty(c ,(/x9(v)/));call chk(st)
       st= ty(t ,(/x9(v)/));call chk(st)
       st= ty(p ,(/x9(v)/));call chk(st)
       st= ty(g ,(/x9(v)/));call chk(st)
       st= ty(c ,(/xa(v)/));call chk(st)
       st= ty(t ,(/xa(v)/));call chk(st)
       st= ty(p ,(/xa(v)/));call chk(st)
       st= ty(g ,(/xa(v)/));call chk(st)
       st= ty(c ,(/xa(v)/));call chk(st)
       st= ty(t ,(/xb(v)/));call chk(st)
       st= ty(p ,(/xb(v)/));call chk(st)
       st= ty(g ,(/xb(v)/));call chk(st)
      end
