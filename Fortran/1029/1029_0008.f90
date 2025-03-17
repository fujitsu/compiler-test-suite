type z
  integer,pointer::za2(:)=>null()
end type
type (z) ::b(2,2,1)
logical  ::mask(2,2,1)
integer  ::vs1(2)
integer,target::t(1)=1

  vs1=(/1,2/)

  mask(1,1,1)=.true.
  mask(2,1,1)=.false.
  mask(1,2,1)=.false.
  mask(2,2,1)=.true.

  forall(i=1:1)
    where(mask(vs1,:,i))
      b(vs1,:,i)=z(t)
    elsewhere
      b(vs1,:,i)=z(null())
    end where
  end forall

  if (.not.associated(b(1,1,1)%za2)) write(6,*) "NG"
  if (     associated(b(2,1,1)%za2)) write(6,*) "NG"
  if (     associated(b(1,2,1)%za2)) write(6,*) "NG"
  if (.not.associated(b(2,2,1)%za2)) write(6,*) "NG"
  if (any(b(1,1,1)%za2/=(/1/))) write(6,*) "NG"
  if (any(b(2,2,1)%za2/=(/1/))) write(6,*) "NG"

 print *,'pass'
end
