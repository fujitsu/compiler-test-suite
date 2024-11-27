module m1
contains
function f(k) result(r)
class(*),allocatable::r
select case(k)
  case(1)
    allocate(r,source=1_1)
  case(2)
    allocate(r,source=2_2)
  case(3)
    allocate(r,source=3_4)
  case(4)
    allocate(r,source=4_8)
  case(5)
    allocate(r,source=1.1_4)
  case(6)
    allocate(r,source=1.2_8)
  case(7)
    allocate(r,source=1.3_16)
  case(8)
    allocate(r,source=(1.1_4,1.1_4))
  case(9)
    allocate(r,source=(1.2_8,1.2_8))
  case(10)
    allocate(r,source=(1.3_16,1.3_16))
  case(11)
    allocate(r,source=.true._1)
  case(12)
    allocate(r,source=.true._4)
end select
end
end
print *,'pass'
end
