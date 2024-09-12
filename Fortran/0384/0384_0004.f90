call test01()
call test02()
print *,'pass'
end

subroutine test01()
integer(kind=1),parameter :: i1=2
integer(kind=2),parameter :: i2=4
integer(kind=4),parameter :: i3=8
integer(kind=8),parameter :: i4=16
call t()
contains
subroutine t()

character(i1) :: chb(2),cha(2) = (/character(i1)::'a','abc'/)
character(i2) :: chb1(2),cha1(2) = (/character(i2)::'1','12345'/)
character(i3) :: chb2(2),cha2(2) = (/character(i3)::'z','sssssbbbb'/)
character(i4) :: chb3(2),cha3(2) = (/character(i4)::'c','nnnnnnnnnnaaaaaaaaa'/)
chb = (/character(i1)::'a','abc'/)
chb1 = (/character(i2)::'1','12345'/)
chb2 = (/character(i3)::'z','sssssbbbb'/)
chb3 = (/character(i4)::'c','nnnnnnnnnnaaaaaaaaa'/)
if (chb(1).ne.cha(1)) print *,'err'
if (chb(2).ne.cha(2)) print *,'err'
if (chb1(1).ne.cha1(1)) print *,'err'
if (chb1(2).ne.cha1(2)) print *,'err'
if (chb2(1).ne.cha2(1)) print *,'err'
if (chb2(2).ne.cha2(2)) print *,'err'
if (chb3(1).ne.cha3(1)) print *,'err'
if (chb3(2).ne.cha3(2)) print *,'err'
end subroutine
end

subroutine test02()
integer(kind=1),parameter :: i1=2
integer(kind=2),parameter :: i2=4
integer(kind=4),parameter :: i3=8
integer(kind=8),parameter :: i4=16
call t()
contains
subroutine t()

character(:) ,allocatable :: chb(:), chb1(:),chb2(:),chb3(:)
character(i1) :: cha(2) = (/character(i1)::'a','abc'/)
character(i2) :: cha1(2) = (/character(i2)::'1','12345'/)
character(i3) :: cha2(2) = (/character(i3)::'z','sssssbbbb'/)
character(i4) :: cha3(2) = (/character(i4)::'c','nnnnnnnnnnaaaaaaaaa'/)
allocate(character(i1)::chb(2))
allocate(character(i2)::chb1(2))
allocate(character(i3)::chb2(2))
allocate(character(i4)::chb3(2))
chb(:)(1:i1) = (/character(i1)::'a','abc'/)
chb1(:)(1:i2) = (/character(i2)::'1','12345'/)
chb2(:)(1:i3)= (/character(i3)::'z','sssssbbbb'/)
chb3(:)(1:i4)= (/character(i4)::'c','nnnnnnnnnnaaaaaaaaa'/)
if (chb(1).ne.cha(1)) print *,'err'
if (chb(2).ne.cha(2)) print *,'err'
if (chb1(1).ne.cha1(1)) print *,'err'
if (chb1(2).ne.cha1(2)) print *,'err'
if (chb2(1).ne.cha2(1)) print *,'err'
if (chb2(2).ne.cha2(2)) print *,'err'
if (chb3(1).ne.cha3(1)) print *,'err'
if (chb3(2).ne.cha3(2)) print *,'err'
end subroutine
end
