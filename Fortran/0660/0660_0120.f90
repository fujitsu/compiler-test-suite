call test01()
call test02()
call test03()
call test04()
call test05()
print *,'pass'
end

subroutine test01()
integer*1 i
i=-128
select case(i)
case (-128) 
  j=1
case default
  print *,"fail"
end select 
select case(i)
case (:127) 
  j=1
case default
  print *,"fail"
end select 
select case(i)
case (-128:) 
  j=1
case default
  print *,"fail"
end select 
select case(i)
case (-127:) 
  print *,"fail"
case default
  j=1
end select 
end subroutine

subroutine test02()
integer*2 i
i=-32768
select case(i)
case (-32768) 
  j=1
case default
  print *,"fail"
end select 
select case(i)
case (:32767) 
  j=1
case default
  print *,"fail"
end select 
select case(i)
case (-32768:) 
  j=1
case default
  print *,"fail"
end select 
select case(i)
case (-32767:) 
  print *,"fail"
case default
  j=1
end select 
end subroutine

subroutine test03()
integer*4 i
i=-2147483648
select case(i)
case (-2147483648) 
  j=1
case default
  print *,"fail"
end select 
select case(i)
case (:2147483647) 
  j=1
case default
  print *,"fail"
end select 
select case(i)
case (-2147483648:) 
  j=1
case default
  print *,"fail"
end select 
select case(i)
case (-2147483647:) 
  print *,"fail"
case default
  j=1
end select 
end subroutine

subroutine test04()
integer*8 i,iu,ip,ia
parameter (iu=z'7fffffffffffffff')
parameter (ip=z'8000000000000000')
parameter (ia=z'8000000000000001')
i=ip
select case(i)
case (ip) 
  j=1
case default
  print *,"fail"
end select 
select case(i)
case (:iu) 
  j=1
case default
  print *,"fail"
end select 
select case(i)
case (ip:) 
  j=1
case default
  print *,"fail"
end select 
select case(i)
case (ia:) 
  print *,"fail"
case default
  j=1
end select 
end subroutine

subroutine test05()
integer*4 i
integer*8 pu,pp,pa
parameter (pu=z'ffffffff80000001')
parameter (pp=z'ffffffff80000000')
parameter (pa=z'000000007fffffff')
i=-2147483648
select case(i)
case (pp) 
  j=1
case (pu:) 
 print *,"fail" 
case default
  print *,"fail"
end select 
select case(i)
case (pp:) 
  j=1
case default
  print *,"fail"
end select 
select case(i)
case (:pp) 
  j=1
case default
  print *,"fail"
end select 
end subroutine
