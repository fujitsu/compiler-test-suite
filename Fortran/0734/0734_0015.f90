character*4 r
write(8,'(SP,2I2)')1,0
rewind 8
read (8,'(a)') r;if (r/='+1+0')print *,'error'
print *,'pass'
end
