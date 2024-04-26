integer     i4d2
equivalence (i4d2,i4d3,i4d4,i4res)

call init_d2(i4d2)
print *,i4d2

end program

subroutine init_d2(i)
i = 2
end subroutine
