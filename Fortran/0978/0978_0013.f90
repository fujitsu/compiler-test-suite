write(44,'(i4)') 1
i=44
flush (i,iostat=j,err=2)
if (j/=0)write(6,*) "NG"
goto 1
2 continue
write(6,*) "NG"
1 continue
print *,'pass'
end
