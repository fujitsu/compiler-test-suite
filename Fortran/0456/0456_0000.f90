module m2
interface assignment(=)
module procedure s222
end interface
contains
subroutine s222(cha,k)
integer,value,intent(in):: k
character,intent(out)::cha
cha=''
if (k==1)cha='a'
end subroutine
subroutine s221(cha,k)
integer,value:: k
character,intent(out)::cha
cha=''
if (k==1)cha='a'
end subroutine
end

subroutine s2()
use m2
character::cha
k=1
cha=k
if (cha/='a') print *,101
cha=''
call s222(cha,k)
if (cha/='a') print *,102
cha=''
call s221(cha,k)
if (cha/='a') print *,103
end

call s2()
print *,'pass'
end
