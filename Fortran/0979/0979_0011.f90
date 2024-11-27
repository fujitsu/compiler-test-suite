integer::i1,i2
integer::j1,j2
i1=1
i2=2
j1=11
j2=12

call s1
print *,'pass'

contains
subroutine s1
volatile::i1,j1

if(i1 /= 1) write(6,*) "NG"
if(i2 /= 2) write(6,*) "NG"
if(j1 /= 11) write(6,*) "NG"
if(j2 /= 12) write(6,*) "NG"

end subroutine
end
