module mod
  type z
    logical(2),allocatable::l(:)
  end type
end module

program abc
  call sub()
  print *,'pass'
end program

subroutine sub()
 use mod
 type(z)::a

  a=z((/.true.,.true.,.true.,.true./))

  i=0
  do while (a%l(1).or.a%l(2).or.a%l(3).or.a%l(4))
    i=i+1
    a%l(i)=.false.
  end do

  if (a%l(1)) write(6,*) "NG"
  if (a%l(1).and.a%l(2)) write(6,*) "NG"
  if (a%l(1).and.a%l(2).and.a%l(3)) write(6,*) "NG"
  if (a%l(1).and.a%l(2).and.a%l(3).and.a%l(4)) write(6,*) "NG"
  if (.not.a%l(1).and..not.a%l(2).and..not.a%l(3).and..not.a%l(4)) goto 100
    write(6,*) "NG"
  100 continue
  if (i/=4) write(6,*) "NG"
end subroutine
