character(*) function p1() 
character(*) ::P3
character(*) ::P5
character(*) ::P6
entry p3() 
entry p5() 
entry p6() 
p1='1'
if (len(p1)/=1) print *,101
end
print *,'pass'
end
