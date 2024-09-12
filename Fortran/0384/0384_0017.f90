print *,"pass"
end

subroutine test01()
  integer(4) :: int4
  real(8)    :: ral8
  common /com1/int4,ral8
end

subroutine test02()
  integer(8) :: int8
  real(16)   :: ral16
  common /com2/int8,ral16
end

subroutine test03()
  integer(4) :: int4
  real(16) :: ral16
  common /com3/int4,ral16
end
