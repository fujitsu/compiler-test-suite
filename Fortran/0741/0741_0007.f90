type z
  integer(2),allocatable,dimension(:)::za
end type
type y
  type(z),dimension(2)::yy
end type
type (y)::a(2),b(2)

  a(1)%yy(1)=z((/11/))
  a(1)%yy(2)=z((/12/))
  a(2)%yy(1)=z((/21/))
  a(2)%yy(2)=z((/22/))

  forall (i=1:2,j=1:1)
    b(i)%yy(j)=a(i)%yy(j)
  end forall

      if (.not.allocated(b(1)%yy(1)%za)) write(6,*) "NG"
      if (.not.allocated(b(2)%yy(1)%za)) write(6,*) "NG"
      if (any(b(1)%yy(1)%za/=(/11/))) write(6,*) "NG"
      if (any(b(2)%yy(1)%za/=(/21/))) write(6,*) "NG"

 print *,'pass'
end
