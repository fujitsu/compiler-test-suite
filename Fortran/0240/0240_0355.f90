program main
i=2
call square(i)
j=2
call quad(j)
print *, i,j
print *,'pass'
end program main
subroutine quad(k)
k=k*k
entry square(k)
k=k*k
return
end subroutine quad
