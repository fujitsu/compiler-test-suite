interface
subroutine sub(dmy1,dmy2)
logical :: dmy1(5)
integer,optional ::dmy2
end subroutine
end interface

logical :: arr(5)
arr = (/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./)
call sub(arr,2)
end program

subroutine sub(dmy1,dmy2)
logical :: dmy1(5)
integer,optional ::dmy2
logical ::res(1)
res = PARITY(dmy1,DIM=dmy2)
end subroutine
