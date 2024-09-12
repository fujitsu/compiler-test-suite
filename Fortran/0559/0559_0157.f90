program main
  type ty(k,l)
    integer,kind::k=2,l=4
    integer::ii
  end type
  type(ty(2,4))::func,obj
  func()= ty(2)(5)
  obj = func()
if(obj%ii .eq.5)then
print*,"PASS"
else
print*,"ERROR"
endif
end program
  
