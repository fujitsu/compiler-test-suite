module m1
integer::kk=2
  contains
   function   foo(a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac) result(ir)
    integer,contiguous::a1(:)
    integer           ::a2(:)
    integer,contiguous::a3(:)
    integer           ::a4(:)
    integer,contiguous::a5(:)
    integer           ::a6(:)
    integer,contiguous::a7(:)
    integer           ::a8(:)
    integer,contiguous::a9(:)
    integer           ::aa(:)
    integer,contiguous::ab(:)
    integer           ::ac(:)
    if (any(a1/=[1,3])) print *,301
    if (any(a2/=[1,3])) print *,302
    if (any(a3/=[1,3])) print *,303
    if (any(a4/=[1,3])) print *,304
    if (any(a5/=[1,3])) print *,305
    if (any(a6/=[1,3])) print *,306
    if (any(a7/=[1,3])) print *,307
    if (any(a8/=[1,3])) print *,308
    if (any(a9/=[1,3])) print *,309
    if (any(aa/=[1,3])) print *,310
    if (any(ab/=[1,3])) print *,311,ab
    if (any(ac/=[1,3])) print *,312
    ir=1
   end function
subroutine ss1(b1,b2,b3,b4,b5,b6,b7,b8,b9,ba,bb,bc)
integer                   :: b1(2)
integer                   :: b2(2)
integer,allocatable       :: b3(:)
integer,allocatable       :: b4(:)
integer,contiguous:: b5(:)
integer,contiguous:: b6(:)
integer           :: b7(:)
integer           :: b8(:)
integer,contiguous,pointer:: b9(:)
integer,contiguous,pointer:: ba(:)
integer           ,pointer:: bb(:)
integer           ,pointer:: bc(:)
integer:: v(kk)
v=[1,2]
if (foo(b1(v),b2(v),b3(v),b4(v),b5(v),b6(v),b7(v),b8(v),b9(v),ba(v),bb(v),bc(v))+&
    foo(b1(v),b2(v),b3(v),b4(v),b5(v),b6(v),b7(v),b8(v),b9(v),ba(v),bb(v),bc(v))+&
    foo(b1(v),b2(v),b3(v),b4(v),b5(v),b6(v),b7(v),b8(v),b9(v),ba(v),bb(v),bc(v))/=3) print *,1001
end subroutine
end
subroutine s1
use m1
integer,target:: c(2),cc(3)=[1,2,3]
integer,allocatable::g1(:),g2(:)
integer,pointer,contiguous    ::p1(:)
integer,pointer    ::p2(:)
c=[1,3]
k=2
p1=>c
p2=>cc(::2)
allocate(g1(2),g2(2),source=[1,3])
call ss1(cc(::k),cc(::k),&
         g1,g2, &
         cc(::k),cc(::k),&
         cc(::k),cc(::k),&
         p1,p1, & 
         p2,p2)
end
call s1
print *,'OK'
end 
