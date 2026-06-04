 call s1
 print *,'pass'
 end
 subroutine s1
 integer a(1)
logical(1),pointer::f
character*(3),pointer::x
character*(2),pointer::y
integer      ,pointer::i
 dimension f(:),x(:),y(:),i(:)
allocate(x(1),y(1),f(1),i(1))
x='abc';y='bc';f=.false.;i=1
call sd(f,x,y,i)
               f=.true. 
call sd(f,x,y,i)
call sd(f=f,x=x,y=y,i=i)
               f=.false.
call se(f,x,y,i)
               f=.true. 
call se(f,x,y,i)
contains
subroutine sd(f,x,y,i)
logical(1),optional,pointer::f(:)
character*(*),optional,pointer::x(:)
character*(*),optional,pointer::y(:)
integer      ,optional        ::i(1)
 a=index(x,reshape((/y/),(/i/)))
 if (any(a/=2))print *,'fail'
 a=a+index(x,reshape((/y/),(/i/)))
 if (any(a/=4))print *,'fail'
 a=a+index(reshape((/x/),(/i/)),y)
 if (any(a/=6))print *,'fail'
 a=index(reshape((/x/),(/i/)),y)
 if (any(a/=2))print *,'fail'
 a=index(reshape((/x/),(/i/)),reshape((/y/),(/1/)))
 if (any(a/=2))print *,'fail'
 a=index(reshape((/x/),(/i/)),reshape((/y/),(/1/)))+a
 if (any(a/=4))print *,'fail'
 a=index(x,reshape((/y/),(/i/)),f)
 if (any(a/=2))print *,'fail'
 a=a+index(x,reshape((/y/),(/i/)),f)
 if (any(a/=4))print *,'fail'
 a=a+index(reshape((/x/),(/i/)),y,f)
 if (any(a/=6))print *,'fail'
 a=index(reshape((/x/),(/i/)),y,f)
 if (any(a/=2))print *,'fail'
 a=index(reshape((/x/),(/i/)),reshape((/y/),(/i/)),f)
 if (any(a/=2))print *,'fail'
 a=index(reshape((/x/),(/i/)),reshape((/y/),(/i/)),f)+a
 if (any(a/=4))print *,'fail'
end subroutine 
subroutine se(f,x,y,i)
logical(1),optional,pointer::f(:)
character*(*),optional,pointer::x(:)
character*(*),optional,pointer::y(:)
integer      ,optional        ::i(1)
 a=index(x,reshape((/y/),(/i/)))
 if (any(a/=2))print *,'fail'
 a=a+index(x,reshape((/y/),(/i/)))
 if (any(a/=4))print *,'fail'
 a=a+index(reshape((/x/),(/i/)),y)
 if (any(a/=6))print *,'fail'
 a=index(reshape((/x/),(/i/)),y)
 if (any(a/=2))print *,'fail'
 a=index(reshape((/x/),(/i/)),reshape((/y/),(/1/)))
 if (any(a/=2))print *,'fail'
 a=index(reshape((/x/),(/i/)),reshape((/y/),(/1/)))+a
 if (any(a/=4))print *,'fail'
 a=index(x,reshape((/y/),(/i/)),f)
 if (any(a/=2))print *,'fail'
 a=a+index(x,reshape((/y/),(/i/)),f)
 if (any(a/=4))print *,'fail'
 a=a+index(reshape((/x/),(/i/)),y,f)
 if (any(a/=6))print *,'fail'
 a=index(reshape((/x/),(/i/)),y,f)
 if (any(a/=2))print *,'fail'
 a=index(reshape((/x/),(/i/)),reshape((/y/),(/i/)),f)
 if (any(a/=2))print *,'fail'
 a=index(reshape((/x/),(/i/)),reshape((/y/),(/i/)),f)+a
 if (any(a/=4))print *,'fail'
 a=index(x,reshape((/y/),(/i/)),(/f/))
 if (any(a/=2))print *,'fail'
 a=a+index(x,reshape((/y/),(/i/)),(/f/))
 if (any(a/=4))print *,'fail'
 a=a+index(reshape((/x/),(/i/)),y,(/f/))
 if (any(a/=6))print *,'fail'
 a=index(reshape((/x/),(/i/)),y,(/f/))
 if (any(a/=2))print *,'fail'
 a=index(reshape((/x/),(/i/)),reshape((/y/),(/i/)),(/f/))
 if (any(a/=2))print *,'fail'
 a=index(reshape((/x/),(/i/)),reshape((/y/),(/i/)),(/f/))+a
 if (any(a/=4))print *,'fail'
 a=index(x,reshape((/y/),(/i/)),reshape((/f/),(/1/)))
 if (any(a/=2))print *,'fail'
 a=a+index(x,reshape((/y/),(/i/)),reshape((/f/),(/1/)))
 if (any(a/=4))print *,'fail'
 a=a+index(reshape((/x/),(/i/)),y,reshape((/f/),(/1/)))
 if (any(a/=6))print *,'fail'
 a=index(reshape((/x/),(/i/)),y,reshape((/f/),(/1/)))
 if (any(a/=2))print *,'fail'
 a=index(reshape((/x/),(/i/)),reshape((/y/),(/i/)),reshape((/f/),(/1/)))
 if (any(a/=2))print *,'fail'
 a=index(reshape((/x/),(/i/)),reshape((/y/),(/i/)),reshape((/f/),(/1/)))+a
 if (any(a/=4))print *,'fail'
end subroutine
 end
