subroutine s
!!!! implicit none
block
  procedure(integer)::name
  real::name81,n
  n=name()
if (n.ne.1) print *,'err'
name81=1
end  block
end
call s
print *,'pass'
end
integer function name()
name=1
end
