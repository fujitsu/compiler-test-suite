call test()
print *,'pass'
end
subroutine test()
integer, dimension(2,3) :: a
data a /1,2,3,4,5,6/
if (a(1,1).ne.1)print *,'err'
if (a(2,1).ne.2)print *,'err'
if (a(1,2).ne.3)print *,'err'
if (a(2,2).ne.4)print *,'err'
if (a(1,3).ne.5)print *,'err'
if (a(2,3).ne.6)print *,'err'
end
