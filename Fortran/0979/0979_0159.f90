intrinsic new_line

character,allocatable:: c1(:)

allocate(c1(3))

if (new_line(1_"abc").ne.new_line(1_"def")) write(6,*) "NG"
if (new_line(1_"abc").ne.new_line((/1_"def"/))) write(6,*) "NG"
if (new_line(1_"abc").ne.new_line(a=(/1_"def"/))) write(6,*) "NG"
if (new_line(1_"abc").ne.new_line(a=c1)) write(6,*) "NG"

print *,'pass'

end

