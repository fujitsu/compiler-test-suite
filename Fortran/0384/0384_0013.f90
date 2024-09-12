print *,"pass"
end
subroutine test01()
common /com1/i,r8
bind(c) :: /com1/
real(8) :: r8
end
subroutine test02()
common /com2/i,r8
real(8) :: r8
end
subroutine test03()
common /com3/i,r16
integer(8) :: i
real(16) :: r16
end
subroutine test04()
common /com4/i,r16
integer(8) :: i
real(16) :: r16
end
