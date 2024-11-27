interface
subroutine s1(d1)
integer::d1
end subroutine
end interface
call sub(s1)
contains
subroutine sub(d1)
procedure(s1)::d1
block
  block
  procedure(s1)::d1
  call d1(10)
  end block
end block
call d1(1)
end subroutine
end
subroutine s1(d1)
integer::d1
integer,save :: v1=1
print*,"in s1",v1
v1=v1+1
end subroutine
subroutine d1(x1)
integer::x1
print*,"in block",x1
end subroutine
