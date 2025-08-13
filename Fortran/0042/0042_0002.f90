write(3,*) k
data k/1/
rewind 3
read(3,*)n
if (n/=1)print *,1001

print *,'OK'
end
