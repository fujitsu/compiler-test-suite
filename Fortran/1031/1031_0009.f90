subroutine  filtrage(n)
integer, dimension(n) :: anmat
anmat(1)=100
call x(int(2,kind(anmat(1))))
end
call filtrage(2)
print *,'pass'
end
subroutine x(i)
if (i/=2)print *,'error'
end
