call aaaaa
call bbbbb
print *,'pass'
end
subroutine aaaaa
integer*4 i4(10)
call random_seed(put=i4)
end
subroutine bbbbb
integer*4 i4(10)
k=10
call random_seed(put=i4(1:k))
end
