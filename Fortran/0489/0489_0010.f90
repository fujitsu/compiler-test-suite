integer,parameter::t2(2)=[1,2]
type z
      integer::za3(2)=t2
end type
 type (z),pointer ::bx
allocate(bx)
if (any(bx%za3/=[1,2])) print*,202
print *,'pass'
end