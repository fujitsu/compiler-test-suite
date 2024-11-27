character*4 r
write(1,'(SP,2I2)')1,0
rewind 1
read (1,'(a)') r;if (r/='+1+0')print *,'error'
print *,'pass'
end
