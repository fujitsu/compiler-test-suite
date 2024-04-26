call s()
print *,'pass'
end
subroutine s()
integer :: a(3,3)
integer :: n=3
a = reshape((/0,1,2,3,4,5,6,7,8/),(/3,3/))
if (a(1,1).ne.0   )print *,'err'
if (a(2,1).ne.1   )print *,'err'
if (a(3,1).ne.2   )print *,'err'
if (a(1,2).ne.3   )print *,'err'
if (a(2,2).ne.4   )print *,'err'
if (a(3,2).ne.5   )print *,'err'
if (a(1,3).ne.6   )print *,'err'
if (a(2,3).ne.7   )print *,'err'
if (a(3,3).ne.8   )print *,'err'
forall ( i = 1 : n-1 )
forall ( j = i+1 : n )
a(i,j) = a(j,i)
end forall
end forall
if (a(1,1).ne.0   )print *,'err'
if (a(2,1).ne.1   )print *,'err'
if (a(3,1).ne.2   )print *,'err'
if (a(1,2).ne.1   )print *,'err'
if (a(2,2).ne.4   )print *,'err'
if (a(3,2).ne.5   )print *,'err'
if (a(1,3).ne.2   )print *,'err'
if (a(2,3).ne.5   )print *,'err'
if (a(3,3).ne.8   )print *,'err'
end
