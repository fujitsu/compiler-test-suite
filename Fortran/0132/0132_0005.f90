
program main

print *,'test start'

call init_d(i4d1)
call init_d(i4d2)
call init_d(i4d3)
call init_d(i4d4)

if ((i4d1==i4d2).and.(i4d4==i4d3)) then
  i4res=1
else
  i4res=0
endif

call judge1(i4res)

if ((i4d1==i4d2).and.(i4d4==i4d3)) then
  i4res=0
else
  i4res=1
endif

call judge2(i4res)

print *,'test OK'
print *,'test end'
contains
subroutine init_d(i)
i = 2
end subroutine
end program

subroutine judge(i4res)
entry judge1(i4res)
if (i4res/=1) then
  print *,'test NG'
endif
return
entry judge2(i4res)
if (i4res==1) then
  print *,'test NG'
endif
return
end subroutine
