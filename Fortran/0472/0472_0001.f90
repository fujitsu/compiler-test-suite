 type y
   integer:: x3(2:3)
 end type
  type (y):: v2
  data v2%x3(3)/12/

print *,'pass'
end
