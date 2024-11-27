interface
  subroutine ent01(p1,p2,p3)
  integer :: p1,p2,p3
  value :: p1,p3
  end subroutine ent01
  subroutine ent02(p1,p2,p3)
  integer :: p1,p2,p3
  value :: p2
  end subroutine ent02
end interface

integer :: p1
integer :: p2
integer :: p3

p1 = 0
p2 = 0
p3 = 0

call ent01(p1,p2,p3)
call ent02(p1,p2,p3)

print *,"pass"
end program

subroutine sub(p1)
  integer p1
  integer aaa,bbb,ccc,ddd,eee,fff
  value :: aaa,ccc,eee

  p1 = 0
  return
entry ent01(aaa,bbb,ccc)

  return

entry ent02(ddd,eee,fff)

  return
end
