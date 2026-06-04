module mod0
common /m1/ii
common /m2/jj
data ii/1/
contains
subroutine subb()
jj=10
call isub()
if (jj.ne.10) print *,'fail'
end subroutine
end
subroutine isub()
common /m2/jj1
end subroutine

use mod0
call subb()
call subb2()
print *,"pass"
end

subroutine subb2()
common /m1/ii
common /m2/jj
jj=1
call isub()
if (jj.ne.1) print *,'fail'
contains
subroutine isub()
common /m2/jj1
end subroutine
end
