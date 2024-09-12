integer,target::t2(5)=[1,2,3,4,5]
type z
      integer,pointer::za3(:)=>t2(1:3:2)
end type
 type (z),pointer ::bx
allocate(bx)
if (any(bx%za3/= [1,3])) print *,101
print *,'pass'
end
