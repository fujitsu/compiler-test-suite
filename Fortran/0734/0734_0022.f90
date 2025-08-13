character c*10,cx*10
i=10
write(i,'(sp,i4)') 2
write(c,'(i4)') 2
if (adjustl(c)/='2')print *,'error-1'
write(c,'(sp,i4)') 2
if (adjustl(c)/='+2')print *,'error-2'
write(c,'(i4)') 2
if (adjustl(c)/='2')print *,'error-3'
write(i,'(i4)') 2
write(i,'(i4,ss)') 2
write(i,'(i4)') 2
rewind 10
read(10,'(a)') cx;if (adjustl(cx)/='+2')print *,'error-11'
read(10,'(a)') cx;if (adjustl(cx)/='2')print *,'error-12'
read(10,'(a)') cx;if (adjustl(cx)/='2')print *,'error-13'
read(10,'(a)') cx;if (adjustl(cx)/='2')print *,'error-14'
print *,'pass'
end
