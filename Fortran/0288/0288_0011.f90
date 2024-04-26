call test()
print *,'pass'
end
subroutine test()
integer,dimension(4) :: a
call zee(a)
end 
subroutine zee(x)
integer,dimension(-1:*) :: x
x(-1:2)=1
end subroutine
