module m1
interface assignment(=)
  module procedure k2
end interface
interface assignment(=)
  module procedure k3
end interface
contains
subroutine k2(j1,j2)
character,intent(out)::j1
integer(4),intent(in)::j2
j1=char(j2)
end subroutine
subroutine k3(j1,j2)
character,intent(out)::j1
integer(2),intent(in),value::j2
j1=char(j2)
end subroutine
end
use m1
character n
nn=ichar('a')
n=ichar('a')
if (n/=char(nn))write(6,*) "NG"
n=int(ichar('a'),2)
if (n/=char(nn))write(6,*) "NG"
print *,'pass'
end

  
