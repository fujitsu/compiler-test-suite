subroutine s1
integer:: i(10)= [1,2,3,4,5,6,7,8,9,10]
forall (k=1:1) i(i) = i(1:10)**1 
!print *,'a',i
if (any(i/=[1,2,3,4,5,6,7,8,9,10])) print *,101
end
subroutine s2
integer:: i(10)= [1,2,3,4,5,6,7,8,9,10]
forall (k=1:1) i(i) = i(10:1:-1)**1 
if (any(i/=[10,9,8,7,6,5,4,3,2,1])) print *,102
!print *,'b',i
end
subroutine s3(n)
integer:: i(10)= [1,2,3,4,5,6,7,8,9,10]
forall (k=1:n) i(i) = i(1:10)**1 
!print *,'a',i
if (any(i/=[1,2,3,4,5,6,7,8,9,10])) print *,103
end
subroutine s4(n)
integer:: i(10)= [1,2,3,4,5,6,7,8,9,10]
forall (k=1:n) i(i) = i(10:1:-1)**1 
if (any(i/=[10,9,8,7,6,5,4,3,2,1])) print *,104
!print *,'b',i
end
subroutine s11
integer:: i(10)= [1,2,3,4,5,6,7,8,9,10]
forall (k=1:1) i(i) = i( i  )**1 
!print *,'a',i
if (any(i/=[1,2,3,4,5,6,7,8,9,10])) print *,111
end
subroutine s12
integer:: i(10)= [1,2,3,4,5,6,7,8,9,10]
integer:: ii(10)= [10,9,8,7,6,5,4,3,2,1]
forall (k=1:1) i(i) = i( ii    )**1 
if (any(i/=[10,9,8,7,6,5,4,3,2,1])) print *,112
!print *,'b',i
end
subroutine s13(n)
integer:: i(10)= [1,2,3,4,5,6,7,8,9,10]
forall (k=1:n) i(i) = i( i  )**1 
!print *,'a',i
if (any(i/=[1,2,3,4,5,6,7,8,9,10])) print *,113
end
subroutine s14(n)
integer:: i(10)= [1,2,3,4,5,6,7,8,9,10]
integer:: ii(10)= [10,9,8,7,6,5,4,3,2,1]
forall (k=1:n) i(i) = i( ii    )**1 
if (any(i/=[10,9,8,7,6,5,4,3,2,1])) print *,114
!print *,'b',i
end
call s1
call s2
call s3(1)
call s4(1)
call s11
call s12
call s13(1)
call s14(1)
print *,'OK'
end
