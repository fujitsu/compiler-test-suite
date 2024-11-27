subroutine sub01(a)
character*6 a(1)
if (any((/a/)/='123456'))print *,'error-1'
end
subroutine sub02(a)
character*6 a(1,1,1,1)
if (any((/a/)/='123456'))print *,'error-2'
end
subroutine sub03(a)
character*5 a(1,1,1,1)
if (any((/a/)/='12345'))print *,'error-3'
end
subroutine sub04(a)
character*3 a(2)
if (a(1)/='123')print *,'error-4-1'
if (a(2)/='456')print *,'error-4-2'
end
subroutine sub05(a)
character*3 a(1,1,2,1)
if (a(1,1,1,1)/='123')print *,'error-5-1'
if (a(1,1,2,1)/='456')print *,'error-5-2'
end
subroutine sub06(a)
character*4 a(1,1,1,1)
if (any((/a/)/='1234'))print *,'error-6'
end
subroutine sub07(a)
character*4 a(1)
if (any((/a/)/='1234'))print *,'error-7'
end
character:: a(6)
data a/'1','2','3','4','5','6'/
call sub01(a)
call sub02(a)
call sub03(a)
call sub04(a)
call sub05(a)
call sub06(a)
call sub07(a)
print *,'pass'
end
