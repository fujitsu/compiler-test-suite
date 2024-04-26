call test()
print *,'pass'
end
subroutine test()
integer i
i=1
select case (i)
case (:-2)
print*, "i is less than or equal to -2"
case (0)
print*, "i is equal to 0"
case (1:97)
print*, "i is in the range 1 to 97, inclusive"
case default
print*, "i is either -1 or greater than 97"
end select
end
