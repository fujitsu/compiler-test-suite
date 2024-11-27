
integer a(2:3)
integer,allocatable::x(:)

allocate(x, source=a)   
deallocate(x)
allocate(x, source=+a)  
deallocate(x)
allocate(x, source=(a)) 
deallocate(x)

end
