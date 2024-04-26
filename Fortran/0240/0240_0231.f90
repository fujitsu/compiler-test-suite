call s
print *,'pass'
end
subroutine s
real, pointer, dimension(:) :: a => null()
if(associated(a).neqv..false.) print *,'err'
end
