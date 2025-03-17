common j
external proc1,proc2
j=0
call yy(proc1,1)
call zz(proc2,1)
if (j/=2)write(6,*) "NG"
print *,'pass'
end
subroutine yy(z,i)
external z
call z(z,i)
end
subroutine proc1(x,i)
external x
common j
j=j+1
if (i/=1)write(6,*) "NG"
end
subroutine zz(z,i)
call zzz(z,i)
end
subroutine zzz(z,i)
call z(i)
if (i/=1)write(6,*) "NG"
end
subroutine proc2(i)
common j
j=j+1
if (i/=1)write(6,*) "NG"
end
