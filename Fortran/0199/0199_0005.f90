integer,target::t2(5) 
type z
integer,pointer::za3(:)=>t2(1:3:2)
end type
type (z) ::b(2)
type (z) ::ba
t2=(/1,2,3,4,5/)
print *,'pass'
end
