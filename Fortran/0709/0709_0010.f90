 call s1
 print *,'pass'
 end
 module m1
  integer,parameter::kd=4
  integer::z1=1,z2=2,z3=3,z5=5
  integer::x=3
  character,parameter,dimension(5)::p1=(/'1','2','3','4','5'/)
  character,parameter,dimension(5)::p2=(/'a','b','c','d','e'/)
  character,parameter,dimension(5)::p3=(/'1','b','3','d','5'/)
  character,parameter,dimension(5)::p4=(/'a','2','c','4','e'/)
  character,parameter,dimension(5)::p5=(/'2','2','4','4','6'/)
  character,parameter,dimension(5)::p6=(/'1','3','3','5','5'/)
  contains 
 subroutine i1a(n)
  character(n) ::a(z5),b(z5)
  a=p1
  b=p2
  call ss1(b(1:5:2),(a(1:5:2)),a(1:5:2))
  if (any(b/=p3))print *,'fail'
  if (any(a/=p5))print *,'fail'
  a=p1
  b=p2
  call ss2(b(2:5:2),(a(2:5:2)),a(2:5:2))
  if (any(b/=p4))print *,'fail'
  if (any(a/=p6))print *,'fail'
  a=p1
  b=p2
  call ss1(b(z1:z5:z2),(a(z1:z5:z2)),a(z1:z5:z2))
  if (any(b/=p3))print *,'fail'
  if (any(a/=p5))print *,'fail'
  a=p1
  b=p2
  call ss2(b(z2:z5:z2),(a(z2:z5:z2)),a(z2:z5:z2))
  if (any(b/=p4))print *,'fail'
  if (any(a/=p6))print *,'fail'
  contains 
    subroutine ss1(k1,k2,k3)
    intent(in)::k2
    character  ,dimension(3) ::k1,k2,k3
    k3=achar(iachar(k3)+1); k1=k2
    end subroutine
    subroutine ss2(k1,k2,k3)
    intent(in)::k2
    character  ,dimension(2) ::k1,k2,k3
    k3=achar(iachar(k3)+1); k1=k2
    end subroutine
  end subroutine
end
 subroutine s1
  use m1
  call i1a(1)
 end
