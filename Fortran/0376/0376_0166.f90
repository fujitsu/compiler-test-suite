subroutinetest01()
procedure(),pointer :: paa
intrinsic sin,int
paa=>sin
if (abs(paa(1.0)-sin(1.0))>0.0001) print *,'fail'
end

subroutinetest02()
procedure(real),pointer :: paa
intrinsic sin,int
paa=>sin
if (abs(paa(1.0)-sin(1.0))>0.0001) print *,'fail'
end

subroutinetest03()
procedure(real),pointer :: paa
intrinsic sin,int
paa=>sin
call sub(paa)
contains
subroutine sub(ppp)
external :: ppp
if (abs(paa(1.0)-sin(1.0))>0.0001) print *,'fail'
end subroutine
end



call test01()
call test02()
call test03()
print *,"pass"

end
