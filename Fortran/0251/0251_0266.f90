block
interface gnr
subroutine sub1(d1,d2)
integer::d1,d2
end subroutine
end interface
  block
  interface gnr
  subroutine sub2(d1,d2)
  real::d1,d2
  end subroutine
  end interface
  call gnr(20,10)
  call gnr(12.50,7.75)
  end block
call gnr(20,10)
end block
end
subroutine sub1(d1,d2)
integer::d1,d2
print*,"in sub1",d1+d2
end subroutine
subroutine sub2(d1,d2)
real::d1,d2
print*,"in sub1",d1-d2
end subroutine

