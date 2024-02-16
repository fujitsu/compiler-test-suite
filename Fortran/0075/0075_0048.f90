integer,pointer::p(:)
integer,target::a(3)=[1,2,3]
p=>null()
call foo(p)
p=>a(::2)
call foo(p)
print *,'OK'
contains
subroutine foo(d)
integer,optional::d(2)
if (present(d)) then
  if (d(1)/=1 .or. d(2)/=3) print *,101
end if
end subroutine
end
