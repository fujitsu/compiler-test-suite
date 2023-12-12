write(1,*) k
data k/1/
rewind 1
read(1,*)n
if (n/=1)print *,1001

print *,'OK'
end
