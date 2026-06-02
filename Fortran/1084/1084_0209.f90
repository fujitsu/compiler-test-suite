class(*),allocatable :: cptr(:,:)
class(*),allocatable :: cptr2(:)
allocate(complex::cptr(2,3))
allocate(cptr2(5),source=[(1,2),(14,4),(11,12),(13,14),(24,25)])
select type(xx=>cptr)
type is(complex)
xx%re = 3
xx%im = 4
if (any(xx .ne. (3,4))) print*,101,xx
end select
select type(xx=>cptr2)
type is(complex)
xx(1:5:2)%re = 3
xx(1:5:2)%im = 4
end select
select type(xx=>cptr2)
type is(complex)
if (any(xx.ne.[(3.0,4.0),(14.0,4.0),(3.0,4.0),(13.0,14.0),(3.0,4.0)])) print*,102,xx
if(xx(1).ne.(3.0,4.0))print*,"201"
if(xx(2).ne.(14.0,4.0))print*,"202"
if(xx(3).ne.(3.0,4.0))print*,"203"
if(xx(4).ne.(13.0,14.0))print*,"204"
if(xx(5).ne.(3.0,4.0))print*,"206"
end select
PRINT*,"PASS"
end
