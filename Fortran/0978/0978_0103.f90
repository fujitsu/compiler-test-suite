  implicit none
  type ty01
    character(len=1),pointer :: char01(:)
  end type
    character(len=1),target :: chart(3)
  type(ty01) :: struct01
  chart=(/'a','b','c'/)
  struct01%char01=>chart(1:3:2)

  write(struct01%char01,'(a,/,a)') "1" ,'2'
if (any(chart/=(/'1','b','2'/)))write(6,*) "NG"
print *,'pass'

end
