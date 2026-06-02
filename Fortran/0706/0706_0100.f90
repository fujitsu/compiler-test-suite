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
       n1=1;n2=3    
       st= ty(c  ,f(x1(l:u)(n1:n2)));call chk(st)
       st= ty(t  ,f(x1(l:u)(n1:n2)));call chk(st)
       st= ty(p  ,f(x1(l:u)(n1:n2)));call chk(st)
       st= ty(g  ,f(x1(l:u)(n1:n2)));call chk(st)
       st= ty(c  ,f(x2(l:u)(n1:n2)));call chk(st)
       st= ty(t  ,f(x2(l:u)(n1:n2)));call chk(st)
       st= ty(p  ,f(x2(l:u)(n1:n2)));call chk(st)
       st= ty(g  ,f(x2(l:u)(n1:n2)));call chk(st)
       st= ty(c  ,f(x3(l:u)(n1:n2)));call chk(st)
       st= ty(t  ,f(x3(l:u)(n1:n2)));call chk(st)
       st= ty(p  ,f(x3(l:u)(n1:n2)));call chk(st)
       st= ty(g  ,f(x3(l:u)(n1:n2)));call chk(st)
       st= ty(c  ,f(x4(l:u)(n1:n2)));call chk(st)
       st= ty(t  ,f(x4(l:u)(n1:n2)));call chk(st)
       st= ty(p  ,f(x4(l:u)(n1:n2)));call chk(st)
       st= ty(g  ,f(x4(l:u)(n1:n2)));call chk(st)
       st= ty(c  ,f(x5(l:u)(n1:n2)));call chk(st)
       st= ty(t  ,f(x5(l:u)(n1:n2)));call chk(st)
       st= ty(p  ,f(x5(l:u)(n1:n2)));call chk(st)
       st= ty(g  ,f(x5(l:u)(n1:n2)));call chk(st)
       st= ty(c  ,f(x6(l:u)(n1:n2)));call chk(st)
       st= ty(t  ,f(x6(l:u)(n1:n2)));call chk(st)
       st= ty(p  ,f(x6(l:u)(n1:n2)));call chk(st)
       st= ty(g  ,f(x6(l:u)(n1:n2)));call chk(st)
       st= ty(c  ,f(x7(l:u)(n1:n2)));call chk(st)
       st= ty(t  ,f(x7(l:u)(n1:n2)));call chk(st)
       st= ty(p  ,f(x7(l:u)(n1:n2)));call chk(st)
       st= ty(g  ,f(x7(l:u)(n1:n2)));call chk(st)
       st= ty(c  ,f(x8(l:u)(n1:n2)));call chk(st)
       st= ty(t  ,f(x8(l:u)(n1:n2)));call chk(st)
       st= ty(p  ,f(x8(l:u)(n1:n2)));call chk(st)
       st= ty(g  ,f(x8(l:u)(n1:n2)));call chk(st)
       st= ty(c  ,f(x9(l:u)(n1:n2)));call chk(st)
       st= ty(t  ,f(x9(l:u)(n1:n2)));call chk(st)
       st= ty(p  ,f(x9(l:u)(n1:n2)));call chk(st)
       st= ty(g  ,f(x9(l:u)(n1:n2)));call chk(st)
       st= ty(c  ,f(xa(l:u)(n1:n2)));call chk(st)
       st= ty(t  ,f(xa(l:u)(n1:n2)));call chk(st)
       st= ty(p  ,f(xa(l:u)(n1:n2)));call chk(st)
       st= ty(g  ,f(xa(l:u)(n1:n2)));call chk(st)
       st= ty(c  ,f(xa(l:u)(n1:n2)));call chk(st)
       st= ty(t  ,f(xb(l:u)(n1:n2)));call chk(st)
       st= ty(p  ,f(xb(l:u)(n1:n2)));call chk(st)
       st= ty(g  ,f(xb(l:u)(n1:n2)));call chk(st)
       st= ty(c  ,f(x1(v)(n1:n2)));call chk(st)
       st= ty(t  ,f(x1(v)(n1:n2)));call chk(st)
       st= ty(p  ,f(x1(v)(n1:n2)));call chk(st)
       st= ty(g  ,f(x1(v)(n1:n2)));call chk(st)
       st= ty(c  ,f(x2(v)(n1:n2)));call chk(st)
       st= ty(t  ,f(x2(v)(n1:n2)));call chk(st)
       st= ty(p  ,f(x2(v)(n1:n2)));call chk(st)
       st= ty(g  ,f(x2(v)(n1:n2)));call chk(st)
       st= ty(c  ,f(x3(v)(n1:n2)));call chk(st)
       st= ty(t  ,f(x3(v)(n1:n2)));call chk(st)
       st= ty(p  ,f(x3(v)(n1:n2)));call chk(st)
       st= ty(g  ,f(x3(v)(n1:n2)));call chk(st)
       st= ty(c  ,f(x4(v)(n1:n2)));call chk(st)
       st= ty(t  ,f(x4(v)(n1:n2)));call chk(st)
       st= ty(p  ,f(x4(v)(n1:n2)));call chk(st)
       st= ty(g  ,f(x4(v)(n1:n2)));call chk(st)
       st= ty(c  ,f(x5(v)(n1:n2)));call chk(st)
       st= ty(t  ,f(x5(v)(n1:n2)));call chk(st)
       st= ty(p  ,f(x5(v)(n1:n2)));call chk(st)
       st= ty(g  ,f(x5(v)(n1:n2)));call chk(st)
       st= ty(c  ,f(x6(v)(n1:n2)));call chk(st)
       st= ty(t  ,f(x6(v)(n1:n2)));call chk(st)
       st= ty(p  ,f(x6(v)(n1:n2)));call chk(st)
       st= ty(g  ,f(x6(v)(n1:n2)));call chk(st)
       st= ty(c  ,f(x7(v)(n1:n2)));call chk(st)
       st= ty(t  ,f(x7(v)(n1:n2)));call chk(st)
       st= ty(p  ,f(x7(v)(n1:n2)));call chk(st)
       st= ty(g  ,f(x7(v)(n1:n2)));call chk(st)
       st= ty(c  ,f(x8(v)(n1:n2)));call chk(st)
       st= ty(t  ,f(x8(v)(n1:n2)));call chk(st)
       st= ty(p  ,f(x8(v)(n1:n2)));call chk(st)
       st= ty(g  ,f(x8(v)(n1:n2)));call chk(st)
       st= ty(c  ,f(x9(v)(n1:n2)));call chk(st)
       st= ty(t  ,f(x9(v)(n1:n2)));call chk(st)
       st= ty(p  ,f(x9(v)(n1:n2)));call chk(st)
       st= ty(g  ,f(x9(v)(n1:n2)));call chk(st)
       st= ty(c  ,f(xa(v)(n1:n2)));call chk(st)
       st= ty(t  ,f(xa(v)(n1:n2)));call chk(st)
       st= ty(p  ,f(xa(v)(n1:n2)));call chk(st)
       st= ty(g  ,f(xa(v)(n1:n2)));call chk(st)
       st= ty(c  ,f(xa(v)(n1:n2)));call chk(st)
       st= ty(t  ,f(xb(v)(n1:n2)));call chk(st)
       st= ty(p  ,f(xb(v)(n1:n2)));call chk(st)
       st= ty(g  ,f(xb(v)(n1:n2)));call chk(st)
      contains
       function f(z) result(r)
       character(*) z(l:)
       character (len=j)::r(j-4:j-3)
       r=z
       end function
      end
