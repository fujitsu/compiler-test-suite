module m0
contains
      function  v(r)
       v=r
      end
end
module m1
use m0
  implicit none
  interface
    !module subroutine sub(k,w,q,t,a,b,c,d,f,k1,k2,w1,w2,q1,q2,r1,r2,g1,g2)
    module subroutine sub(k,w,    a,b,c,d,f,k1,k2,w1,w2,      r1,r2,g1,g2)
    implicit none
    interface
      function  f(r)
      end
      function  u(r)
      end
    end interface
    procedure(f)::k
    procedure(f),pointer,intent(in)::w
!    procedure(abs)::q
!    procedure(abs),pointer,intent(in)::t
    procedure(u  )::a
    procedure(u ) ,pointer,intent(in)::b
    procedure(v  )::c
    procedure(v)  ,pointer,intent(in)::d
    procedure(k)::k1
    procedure(k),pointer,intent(in)::k2
    procedure(w)::w1
    procedure(w),pointer,intent(in)::w2
!    procedure(q)::q1
!    procedure(q),pointer,intent(in)::q2
    procedure(u  )::r1
    procedure(u ) ,pointer,intent(in)::r2
    procedure(v  )::g1
    procedure(v)  ,pointer,intent(in)::g2
    end
  end interface
end

submodule(m1)smod
contains
  module subroutine sub &
                         !(k,w,q,t,a,b,c,d,f,k1,k2,w1,w2,q1,q2,r1,r2,g1,g2)
                         (k,w,    a,b,c,d,f,k1,k2,w1,w2,      r1,r2,g1,g2)
    implicit none
    interface
      function  f(r)
      end
      function  u(r)
      end
    end interface
    procedure(f)::k
    procedure(f),pointer,intent(in)::w
!    procedure(abs)::q
!    procedure(abs),pointer,intent(in)::t
    procedure(u  )::a
    procedure(u ) ,pointer,intent(in)::b
    procedure(v  )::c
    procedure(v)  ,pointer,intent(in)::d
    procedure(k)::k1
    procedure(k),pointer,intent(in)::k2
    procedure(w)::w1
    procedure(w),pointer,intent(in)::w2
!    procedure(q)::q1
!    procedure(q),pointer,intent(in)::q2
    procedure(u  )::r1
    procedure(u ) ,pointer,intent(in)::r2
    procedure(v  )::g1
    procedure(v)  ,pointer,intent(in)::g2
   if (k(2.5)/=2.5) print *,10001  
   if (w(2.4)/=2.4) print *,10002  
   !if (q(2.3)/=2.3) print *,10003  
   !if (t(2.2)/=2.2) print *,10004  
   if (a(2.1)/=2.1) print *,10005  
   if (b(2.6)/=2.6) print *,10006  
   if (c(2.7)/=2.7) print *,10007  
   if (d(2.8)/=2.8) print *,10008  
   if (f(2.9)/=2.9) print *,10009  
   if (k1(3.1)/=3.1) print *,10010  
   if (k2(3.2)/=3.2) print *,10011  
   if (w1(3.3)/=3.3) print *,10012  
   if (w2(3.4)/=3.4) print *,10013  
  ! if (q1(3.5)/=3.5) print *,10014  
  ! if (q2(3.6)/=3.6) print *,10015  
   if (r1(3.7)/=3.7) print *,10016  
   if (r2(3.8)/=3.8) print *,10017  
   if (g1(3.9)/=3.9) print *,10018  
   if (g2(4.1)/=4.1) print *,10019  
  end 
end

use m1
integer::n,nn
interface
      function   ak(d)
      end
end interface
!call sub(k=ak,w=ak,q=ak,t=ak,a=ak,b=ak,c=ak,d=ak,f=ak,k1=ak,k2=ak,&
!   w1=ak,w2=ak,q1=ak,q2=ak,r1=ak,r2=ak,g1=ak,g2=ak)
call sub(k=ak,w=ak,          a=ak,b=ak,c=ak,d=ak,f=ak,k1=ak,k2=ak,&
   w1=ak,w2=ak,            r1=ak,r2=ak,g1=ak,g2=ak)
rewind 4
do nn=1,15
read(4,*) n;if (n/=1) print *,700,n
end do
read(4,*,end=9) n
print *,9
9 continue
print *,'sngg210o : pass'
end
   function   ak(d)
write(4,*) 1
   ak=d
  end
