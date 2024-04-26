call a1
call a2
call a3
call a4
call a5
print *,'pass'
end
subroutine a1
character(:),allocatable::ch
allocate(character(2)::ch)
ch="12"
if(ch/="12") print *,'err1'
end subroutine
subroutine a2
character(:),allocatable::ch(:)
allocate(character(2)::ch(2))
ch="12"
if(any(ch/=["12","12"])) print *,'err2'
end subroutine
subroutine a3
integer*2 j
character(100) ch,ch1,ch2
integer,allocatable::a1(:)
character(2),allocatable::n1(:)
allocate(n1(2),source=(/"aa","aa"/))
allocate(a1(2),stat=j,errmsg=ch,source=(/1,2/))
deallocate(n1,errmsg=ch1)
deallocate(a1,errmsg=ch2)
end subroutine
subroutine a4
type a
integer,allocatable::i(:)
end type
type(a)::typ
allocate(typ%i(2))
typ%i=1
if(any(typ%i/=[1,1])) print *,'err3'
end subroutine
subroutine a5
character(:),allocatable::i,j
allocate(i,source="12")
allocate(character(2)::j)
j="34"
if((i//j)/="1234") print *,'err4'
end subroutine



