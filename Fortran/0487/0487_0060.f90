integer,target::t2(2)=[1,2]
type z
      integer,pointer::za3(:)=>t2
end type
 type (z),pointer ::bx
allocate(bx)
if (any(bx%za3/=[1,2])) print *,101
print *,'pass'
end
