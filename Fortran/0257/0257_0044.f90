type ty
character(len=3)::a(5)
character(len=3)::b(5)
character(len=:),pointer::c(:)
character(len=:),allocatable::d(:)
end type
type(ty)::obj
integer::l =3
integer::k=1
obj%a = ['aaa' ,'bbb','ccc' ,'ddd' ,'eee']
obj%b = ['aaa' ,'bbb','ccc' ,'ddd' ,'eee']
allocate(character(l)::obj%c(5))
allocate(character(l)::obj%d(5))
obj%c = ['aaa' ,'bbb','ccc' ,'ddd' ,'eee']
obj%d = ['aaa' ,'bbb','ccc' ,'ddd' ,'eee']
call sub(obj%a(1:5:k), obj%b(1:5:k), obj%c(1:5:k),obj%d(1:5:k) )
call sub(obj%a(1:5:k)(:), obj%b(1:5:k)(:), obj%c(1:5:k)(:),obj%d(1:5:k)(:))
k=3
call sub(obj%a(:)(1:3), obj%b(:)(1:3), obj%c(:)(1:3),obj%d(:)(1:3))
call sub(obj%a(:)(1:k), obj%b(:)(1:k), obj%c(:)(1:k),obj%d(:)(1:k))
k=2
call sub2(obj%a(1:5:k), obj%b(1:5:k), obj%c(1:5:k),obj%d(1:5:k) )
call sub2(obj%a(1:5:k)(:), obj%b(1:5:k)(:), obj%c(1:5:k)(:),obj%d(1:5:k)(:))

print*,"pass"
contains
subroutine sub(a,b,c,d)
character(len=*)::a(5)
character(len=*)::b(5)
character(len=*)::c(5)
character(len=*)::d(5)
if(loc(a).ne.loc(obj%a))print*,"103"
if(loc(b).ne.loc(obj%b))print*,"104"
if(loc(c).ne.loc(obj%c))print*,"105"
if(loc(d).ne.loc(obj%d))print*,"106"
if(len(a).ne.3)print*,"111"
if(len(b).ne.3)print*,"112"
if(len(c).ne.3)print*,"113"
if(len(d).ne.3)print*,"114"
if(any(a.ne.['aaa' ,'bbb','ccc' ,'ddd' ,'eee']))print*,"101"
if(any(b.ne.['aaa' ,'bbb','ccc' ,'ddd' ,'eee']))print*,"102"
if(any(c.ne.['aaa' ,'bbb','ccc' ,'ddd' ,'eee']))print*,"102"
if(any(d.ne.['aaa' ,'bbb','ccc' ,'ddd' ,'eee']))print*,"102"
end subroutine
subroutine sub2(a,b,c,d)
character(len=*)::a(3)
character(len=*)::b(3)
character(len=*)::c(3)
character(len=*)::d(3)
if(loc(a).eq.loc(obj%a))print*,"103"
if(loc(b).eq.loc(obj%b))print*,"104"
if(loc(c).eq.loc(obj%c))print*,"105"
if(loc(d).eq.loc(obj%d))print*,"106"
if(len(a).ne.3)print*,"111"
if(len(b).ne.3)print*,"112"
if(len(c).ne.3)print*,"113"
if(len(d).ne.3)print*,"114"
if(any(d.ne.['aaa' ,'ccc' ,'eee']))print*,"101"
if(any(c.ne.['aaa' ,'ccc' ,'eee']))print*,"101"
if(any(b.ne.['aaa' ,'ccc' ,'eee']))print*,"101"
if(any(d.ne.['aaa' ,'ccc' ,'eee']))print*,"101"
end subroutine
end
