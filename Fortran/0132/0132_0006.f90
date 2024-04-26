
program main

integer     i4d1,i4d2
equivalence (i4d2,i4d3,i4d4,i4res)

print *,'test start'

call init_d4(i4d1)
call init_d2(i4d2)
call init_d3(i4d3)
call init_d4(i4d4)

if ((i4d1==i4d2).and.(i4d4==i4d3)) then
  i4res=1
else
  i4res=0
endif

call judge1(i4res)

call init_d4(i4d4)

if ((i4d1==i4d2).and.(i4d4==i4d3)) then
  i4res=0
else
  i4res=1
endif

call judge2(i4res)

print *,'test OK'
print *,'test end'
contains
subroutine init_d2(i)
i = 2
end subroutine
subroutine init_d3(i)
i = 3
end subroutine
subroutine init_d4(i)
i = 4
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
