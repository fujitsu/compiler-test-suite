PROGRAM MAIN
implicit none
integer , pointer :: obj,obj1
allocate(obj,obj1,source=obj)
print*,obj,obj1
END PROGRAM
