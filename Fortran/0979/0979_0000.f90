flush 10
flush (10,err=100)
goto 1
100 continue
write(6,*) "NG"

1 continue
print *,'pass'
end
