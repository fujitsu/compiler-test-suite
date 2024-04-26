type ty
character(len=:),pointer::c(:)
character(len=3),pointer::d(:)
end type
type(ty)::obj
integer::l =3
allocate(character(l)::obj%c(5))
allocate(obj%d(5))
obj%c = ['aaa' ,'bbb','ccc' ,'ddd' ,'eee']
obj%d = ['aaa' ,'bbb','ccc' ,'ddd' ,'eee']
call sub( obj%c(:),obj%d(:) )
call sub( obj%c, obj%d )
print*,"pass"
contains
subroutine sub(a,b)
character(len=*)::a(5)
character(len=*)::b(5)
if(loc(a).ne.loc(obj%c))print*,"103"
if(loc(b).ne.loc(obj%d))print*,"104"
if(len(a).ne.3)print*,"111"
if(len(b).ne.3)print*,"112"
if(any(a.ne.['aaa' ,'bbb','ccc' ,'ddd' ,'eee']))print*,"101"
if(any(b.ne.['aaa' ,'bbb','ccc' ,'ddd' ,'eee']))print*,"102"
end subroutine
end
