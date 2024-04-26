character,parameter::a1=new_line("a")
character,parameter::a2=new_line(["a"])
character::a3
a3=     new_line(["a"])
if (a1/=a3) print *,101
if (a2/=a3) print *,102
if (a1/=a2) print *,103
print *,'pass'
end
