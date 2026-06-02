call test01(ii)
if (ii.ne.100) write(6,*) "NG"
call test02(ii)
if (ii.ne.200) write(6,*) "NG"
call test03(ii)
if (ii.ne.200) write(6,*) "NG"
print *,'pass'
contains
subroutine test01(i)
volatile  :: i
intent(inout) :: i
i=100
end subroutine
subroutine test02(i)
volatile  :: i
intent(out) :: i
i=200
end subroutine
subroutine test03(i)
value     :: i
intent(in) :: i
end subroutine
end
