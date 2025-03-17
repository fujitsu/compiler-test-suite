type z
  character(3),pointer::za1(:)
  integer(4),allocatable::za2(:)
end type
type (z)            ::a(2,2)
type (z)            ::b(2,2)
logical(4)         ::mask(2,2)
integer            ::vs1(2),vs2(2)
integer,target::t(1)=1

  vs1=(/1,2/)
  vs2=(/2,1/)

  mask(1,1)=.true.
  mask(2,1)=.false.
  mask(1,2)=.false.
  mask(2,2)=.true.
  mask(1,1)=.false.
  mask(2,1)=.true.
  mask(1,2)=.true.
  mask(2,2)=.false.

  do i=1,2
    where(mask(vs1,i))
      b(vs1,i)=z(null(),t)
    end where
  enddo

  if (     allocated(b(1,1)%za2)) write(6,*) "NG"
  if (.not.allocated(b(2,1)%za2)) write(6,*) "NG"
  if (.not.allocated(b(1,2)%za2)) write(6,*) "NG"
  if (     allocated(b(2,2)%za2)) write(6,*) "NG"

  deallocate(b(2,1)%za2)
  deallocate(b(1,2)%za2)

  forall(i=1:2)
    where(mask(vs1,i))
      b(vs2,i)=z(null(),t)
    end where
  end forall

  if (.not.allocated(b(1,1)%za2)) write(6,*) "NG"
  if (     allocated(b(2,1)%za2)) write(6,*) "NG"
  if (     allocated(b(1,2)%za2)) write(6,*) "NG"
  if (.not.allocated(b(2,2)%za2)) write(6,*) "NG"

 print *,'pass'
end
