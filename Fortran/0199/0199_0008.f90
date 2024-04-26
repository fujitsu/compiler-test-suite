integer,target::t2(5) 
type z
      integer,pointer::za3(:)=>t2(1:3:2)
end type
 type (z),pointer     ::b_arr(:)
 type (z),allocatable ::b
t2=(/1,2,3,4,5/)
allocate(b)
allocate(b_arr(2))
print *,'pass'
end
