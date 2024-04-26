call test()
call test2()
print *,'pass'
end
subroutine test()
integer, dimension(3) :: a, b=(/1,2,3/), c=(/(i, i=4,6)/)
a = b + c + (/7,8,9/)
if (a(1).ne.12   )print *,'err'
if (a(2).ne.15   )print *,'err'
if (a(3).ne.18   )print *,'err'
call test2()
end

subroutine test2()
integer,dimension(2,2) :: a = reshape((/1,2,3,4/),(/2,2/))
if (a(1,1).ne.1   )print *,'err'
if (a(2,1).ne.2   )print *,'err'
if (a(1,2).ne.3   )print *,'err'
if (a(2,2).ne.4   )print *,'err'
end
