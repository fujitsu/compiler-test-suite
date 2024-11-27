character :: c
c=new_line(1_"a")
if (kind(c).ne.1) write(6,*) "NG"

print *,'pass'

end
