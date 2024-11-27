 call s1
 print *,'pass'
 end
 module m1
 contains
  subroutine chk(x)
   character*(*) x
   if (x/='11234')write(6,*) "NG"
   x='12345'
  end subroutine
end
 subroutine s1
 call ss1
 call ss2
 call ss3
 call ss4
 call ss5
 end
 subroutine ss5
 use m1
 character*5 f*4
 character*4,pointer ::b,c*5
 character*5,pointer::a
 allocate(a)
 b=>a(2:)
 c=>a
 a='12345'
 i=2
 b=a(1:4)
 call chk(a)
 b=a(1:4)
 call chk(a)
 b=f(a(1:4))
 call chk(a)
 b=f(a)
 call chk(a)
 a(2:5)=c(1:4)
 call chk(a)
 a(i:5)=c(1:4)
 call chk(a)
 a(2:5)=f(c(1:4))
 call chk(a)
 a(i:5)=f(c)
 call chk(a)
 end 
 subroutine ss4
 use m1
 character*5 f*4
 character*4,pointer ::b,c*5
 character*5,target::a
 b=>a(2:)
 c=>a
 a='12345'
 i=2
 b=a(1:4)
 call chk(a)
 b=a(1:4)
 call chk(a)
 b=f(a(1:4))
 call chk(a)
 b=f(a)
 call chk(a)
 a(2:5)=c(1:4)
 call chk(a)
 a(i:5)=c(1:4)
 call chk(a)
 a(2:5)=f(c(1:4))
 call chk(a)
 a(i:5)=f(c)
 call chk(a)
 end 
 subroutine ss3
 use m1
 character*5 a,f*4,b,c
 pointer (ib,b),(ic,c)
 ib=loc(a(2:2))
 ic=loc(a)
 a='12345'
 i=2
 b=a(1:4)
 call chk(a)
 b=a(1:4)
 call chk(a)
 b=f(a(1:4))
 call chk(a)
 b=f(a)
 call chk(a)
 a(2:5)=c(1:4)
 call chk(a)
 a(i:5)=c(1:4)
 call chk(a)
 a(2:5)=f(c(1:4))
 call chk(a)
 a(i:5)=f(c)
 call chk(a)
 end 
 subroutine ss2
 use m1
 character*5 a,f*4,b,c
 equivalence (a(2:2),b)
 equivalence (a,c)
 a='12345'
 i=2
 b=a(1:4)
 call chk(a)
 b=a(1:4)
 call chk(a)
 b=f(a(1:4))
 call chk(a)
 b=f(a)
 call chk(a)
 a(2:5)=c(1:4)
 call chk(a)
 a(i:5)=c(1:4)
 call chk(a)
 a(2:5)=f(c(1:4))
 call chk(a)
 a(i:5)=f(c)
 call chk(a)
 end 
 subroutine ss1
 use m1
 character*5 a,f*4
 a='12345'
 i=2
 a(2:5)=a(1:4)
 call chk(a)
 a(i:5)=a(1:4)
 call chk(a)
 a(2:5)=f(a(1:4))
 call chk(a)
 a(i:5)=f(a)
 call chk(a)
 end 
 function f(x)
 character*(*) f,x
 f=x
 end
