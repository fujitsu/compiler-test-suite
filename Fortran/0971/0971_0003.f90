type ty1
 integer ,pointer :: i
end type
type(ty1),pointer :: str2
class(*),pointer :: str
namelist /na/ str
namelist /na2/ str2
print *,'pass'
end
