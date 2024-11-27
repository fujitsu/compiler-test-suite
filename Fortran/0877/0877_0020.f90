integer(8)::a=mod(-huge(a)-1_8,-1_8)
integer(8)::b=(-huge(a)-1_8)/(-1_8)
print *,a,b
print *,'pass'
end
