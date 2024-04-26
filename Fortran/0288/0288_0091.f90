call s
print *,'pass'
end
subroutine s
integer, dimension(100) :: seed,old
seed=1
call random_seed
call random_seed(size=k)
call random_seed(put=seed(1:k))
call random_seed(get=old(1:k))
end
