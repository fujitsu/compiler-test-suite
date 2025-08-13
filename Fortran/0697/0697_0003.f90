type struct
   integer mem01
   integer mem02(2)
   integer mem03
end type
type(struct):: array_var(3)
type(struct):: scalar_var

write(2,*)'array :',(loc(array_var(2))-loc(array_var(1))) *size(array_var)   

write(2,*)'scalar:',loc(scalar_var%mem03)-loc(scalar_var%mem01) + 4
print *,'pass'
end
