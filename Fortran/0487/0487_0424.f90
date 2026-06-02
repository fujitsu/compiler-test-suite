subroutine s(c5,c7)
 use iso_c_binding
 integer,target,dimension(2,3)::b1
 integer,target,allocatable,dimension(:,:) :: c2
 integer,target,allocatable :: c1
 integer,pointer,dimension(:,:) :: c3
 integer,pointer           :: c4
 integer,target,dimension(1:) :: c5
 integer,target,dimension(1:2) :: c6
 integer,target,dimension(*  ) :: c7
 type (c_ptr) :: res
 res=c_loc(c1) 
 res=c_loc(c2) 
 res=c_loc(c3) 
 res=c_loc(c4) 
 res=c_loc(c5) 
 res=c_loc(c6) 
 res=c_loc(c7) 
 res=c_loc(b1)
write(1,*) res
end
 print *, 'pass'
 end
