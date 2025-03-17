interface ab
 subroutine a(x)
  integer,external :: x
 end subroutine a
 subroutine b(x)
  real,external :: x
 end subroutine b
end interface
integer, external :: x
real, external :: y
call ab(x)
call ab(y)
 call chk
print *,'pass'
end
 subroutine a(x)
  integer,external :: x
  write(1,*) x(1)
 end subroutine a
 subroutine b(x)
  real,external :: x
  write(1,*) x(2)
 end subroutine b
subroutine chk
rewind 1
read(1,*) i;if (i/=1)print *,'error-1'
read(1,*) a;if (abs(a-2)>0.0001)print *,'error-2'
end
integer function x(i)
x=i
end 
real function y(i)
y=i
end 
