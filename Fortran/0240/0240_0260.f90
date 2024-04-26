integer, dimension(100) :: seed=10
call s(seed)
print *,'pass'
end
subroutine s(seed)
integer, dimension(100) :: seed,old
intent(in)::seed
call random_seed
call random_seed(size=k)
call random_seed(put=seed(1:k))
call random_seed(get=old(1:k))
end
