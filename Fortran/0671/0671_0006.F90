print *,"pass"
call test01()
call test02()
end

subroutine test01()
complex ::  arr(2)
arr=1
if (1.eq.2) print *,arr
end

subroutine test02()
#define O Z
integer(kind=8) :: int =O"1111"
integer(kind=8) :: int1 ="1111"O
if (1.eq.2)print *,int
if (1.eq.2)print *,int1

end

