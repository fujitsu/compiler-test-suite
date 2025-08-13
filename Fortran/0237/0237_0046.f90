subroutine s1
character,parameter::a1=new_line("a")
character,parameter::a2=new_line(["a"])
character(kind=4),parameter::b1=new_line(4_"a")
character(kind=4),parameter::b2=new_line([4_"a"])
write(114,*)a1,a2
write(114,*)b1,b2
end


subroutine s2
character,parameter::a1=new_line(a="a")
character,parameter::a2=new_line(A="a")
write(114,*) a1,a2
end
call s1
call s2
print *,'pass'
end

