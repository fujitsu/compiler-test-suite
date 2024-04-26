call sub7()
call sub8()
print *,'pass'
10end 
subroutine sub7()
integer ,allocatable :: arr(:)
if (1.eq.2) deallocate(arr)
end subroutine
subroutine sub8()
integer ,pointer     :: arr(:)
if (1.eq.2) nullify(arr)
end subroutine
