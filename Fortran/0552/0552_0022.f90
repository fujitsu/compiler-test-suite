PROGRAM MAIN
REAL*8::a = COS(60.2_8)
call check(a, COS(60.2_8))
END

subroutine check(x, y)
REAL*8 x, y,yy
yy=y
if (x.ne.y) then
if (abs(x-y)>0.0000000001_8)  print *,'??? (Error: R8->R8) ???'
yy=-0.8728716082934540_8
else
endif
write(1,*)x, "--",yy
print*," R8->R8 OK" 
end subroutine
