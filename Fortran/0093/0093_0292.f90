class(*),allocatable :: cptr(:,:)
allocate(complex::cptr(2,3))
select type(xx=>cptr)
type is(complex)
xx%re = 3
xx%im = 4
if (any(xx .ne. (3,4))) print*,101
PRINT*,"PASS"
end select

end

