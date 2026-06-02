c
c
      call s1
      print *,'pass'
      end
      module type
       type ty; character*3 i ; character*3 a(-2:-2); end type 
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
       character(len=*),parameter::x1=
     1     char(i char('a'))//achar(iachar('b'))//achar(i char('c'))
       character(len=len(x1)),target   ::x2=
     1     char(i char('a'))//achar(iachar('b'))//achar(i char('c'))
      end module
      module chk_m
      use type;use cnt
        integer j/3/
      contains
       subroutine chk(d)
        type(ty)::d
        if (d%i/='123')print *,'fail'
        if (any(d%a/=(/'abc'/)))print *,'fail'
       end subroutine
      end module
      subroutine s1
       use data
       call t1('abc')
      end      
      subroutine t1(x3)
       use type;use cnt;use data;use chk_m
       type (ty) :: st
       character*(*) x3
       n1=1;n2=2;n3=3
       if (len(x1(n1:n3))/=3)print *,'fail'
       st=ty(c,(/ 'abc'        /) ) ;call chk(st)
       st=ty(c,(/ 'abc'(n1:n3) /) ) ;call chk(st)
       st=ty(c,(/ 'abc'(n1:n3)//'abc'(n1:n3) /) ) ;call chk(st)
       st=ty(c,(/ 'abc'(n1:n1)//'abc'(n2:n2)//'abc'(n3:n3) /) ) 
       call chk(st)
       st=ty(c,(/ 'abc'(n1:n2)//           'abc'(n3:n3) /) ) 
       call chk(st)
       st=ty(c,(/ 'abc'(n1:n2)//'c' /) ) ; call chk(st)
       st=ty(c,(/ 'a'// 'abc'(n2:n3) /) ); call chk(st)
       st=ty(c,(/ 'ab'// 'abc'(n3:n3) /) ); call chk(st)
       st=ty(c,(/ f('abc'(n1:n3)) /) ) ;call chk(st)
       st=ty(c,(/ f('abc'(n1:n1)//'abc'(n2:n2)//'abc'(n3:n3)) /) ) 
       call chk(st)
       st=ty(c,(/ f('abc'(n1:n2)//           'abc'(n3:n3)) /) ) 
       call chk(st)
       st=ty(c,(/ f('abc'(n1:n2)// 'c') /) ) ;call chk(st)
       st=ty(c,(/ f('a'// 'abc'(n2:n3) )/) ); call chk(st)
       st=ty(c,(/ f('ab'// 'abc'(n3:n3)) /) ); call chk(st)
       st=ty(c,(/ f('abc')  /) ) ;call chk(st)
       st=ty(c,(/ x1        /) ) ;call chk(st)
       st=ty(c,(/ x1(n1:n3) /) ) ;call chk(st)
       st=ty(c,(/ x1(n1:n3)//x1(n1:n3) /) ) ;call chk(st)
       st=ty(c,(/ x1(n1:n1)//x1(n2:n2)//x1(n3:n3) /) ) ;call chk(st)
       st=ty(c,(/ x1(n1:n2)//           x1(n3:n3) /) ) ;call chk(st)
       st=ty(c,(/ x1(n1:n2)// 'c'        /) ) ;call chk(st)
       st=ty(c,(/ 'a'//x1(n2:n3)   /) ) ;call chk(st)
       st=ty(c,(/ 'ab'//x1(n3:n3)   /) ) ;call chk(st)
       st=ty(c,(/ f(x1(n1:n3)) /) ) ;call chk(st)
       st=ty(c,(/ f(x1(n1:n3)//           x1(n1:n3)) /) ) ;call chk(st)
       st=ty(c,(/ f(x1(n1:n1)//x1(n2:n2)//x1(n3:n3)) /) ) ;call chk(st)
       st=ty(c,(/ f(x1(n1:n2)//           x1(n3:n3)) /) ) ;call chk(st)
       st=ty(c,(/ f(x1(n1:n2)//'c') /) ) ;call chk(st)
       st=ty(c,(/ f('a'//x1(n2:n3) ) /) ) ;call chk(st)
       st=ty(c,(/ f('ab'//x1(n3:n3))  /) ) ;call chk(st)
       st=ty(c,(/ f(x1)    /) ) ;call chk(st)
       st=ty(c,(/ x2        /) ) ;call chk(st)
       st=ty(c,(/ x2(n1:n3) /) ) ;call chk(st)
       st=ty(c,(/ x2(n1:n3)//x2(n1:n3) /) ) ;call chk(st)
       st=ty(c,(/ x2(n1:n1)//x2(n2:n2)//x2(n3:n3) /) ) ;call chk(st)
       st=ty(c,(/ x2(n1:n2)//           x2(n3:n3) /) ) ;call chk(st)
       st=ty(c,(/ x2(n1:n2)//'c' /) ) ;call chk(st)
       st=ty(c,(/ 'a'//x2(n2:n3)   /) ) ;call chk(st)
       st=ty(c,(/ 'ab'//x2(n3:n3)   /) ) ;call chk(st)
       st=ty(c,(/ f(x2)       /) ) ;call chk(st)
       st=ty(c,(/ f(x2(n1:n3)) /) ) ;call chk(st)
       st=ty(c,(/ f(x2(n1:n3)//           x2(n1:n3)) /) ) ;call chk(st)
       st=ty(c,(/ f(x2(n1:n1)//x2(n2:n2)//x2(n3:n3)) /) ) ;call chk(st)
       st=ty(c,(/ f(x2(n1:n2)//           x2(n3:n3)) /) ) ;call chk(st)
       st=ty(c,(/ f(x2(n1:n2)//'c') /) ) ;call chk(st)
       st=ty(c,(/ f('a'//x2(n2:n3))  /) ) ;call chk(st)
       st=ty(c,(/ f('ab'//x2(n3:n3))  /) ) ;call chk(st)
       st=ty(c,(/ x3        /) ) ;call chk(st)
       st=ty(c,(/ x3(n1:n3) /) ) ;call chk(st)
       st=ty(c,(/ x3(n1:n3)//x3(n1:n3) /) ) ;call chk(st)
       st=ty(c,(/ x3(n1:n1)//x3(n2:n2)//x3(n3:n3) /) ) ;call chk(st)
       st=ty(c,(/ x3(n1:n2)//           x3(n3:n3) /) ) ;call chk(st)
       st=ty(c,(/ x3(n1:n2)//'c' /) ) ;call chk(st)
       st=ty(c,(/ 'a'//x3(n2:n3)   /) ) ;call chk(st)
       st=ty(c,(/ 'ab'//x3(n3:n3)   /) ) ;call chk(st)
       st=ty(c,(/ f(x3)       /) ) ;call chk(st)
       st=ty(c,(/ f(x3(n1:n3)) /) ) ;call chk(st)
       st=ty(c,(/ f(x3(n1:n3)//           x3(n1:n3)) /) ) ;call chk(st)
       st=ty(c,(/ f(x3(n1:n1)//x3(n2:n2)//x3(n3:n3)) /) ) ;call chk(st)
       st=ty(c,(/ f(x3(n1:n2)//           x3(n3:n3)) /) ) ;call chk(st)
       st=ty(c,(/ f(x3(n1:n2)//'c') /) ) ;call chk(st)
       st=ty(c,(/ f('a'//x3(n2:n3))  /) ) ;call chk(st)
       st=ty(c,(/ f('ab'//x3(n3:n3))  /) ) ;call chk(st)
      contains
       function f(z) result(r)
       character(*) z
       character (len=j)::r
       r=z
       end function
      end
