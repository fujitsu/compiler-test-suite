type ty1
integer,pointer ::j
endtype 
type(ty1) :: i
namelist /na/ i,j
i%j=1
j=1
end
