subroutine s1(k1,k2,a)
real(8) :: a(k1,k2+1)
real(8) :: aa(k1,k2+1)

forall (n=1:k2+1)
  aa(1:k1 , n )=a(1:k1, n )+[ (dble(n),nn=1,k1) ]
end forall
a=aa

end
subroutine s2(k1,k2,b)
real(8) :: b(k1,k2+1)
real(8) :: bb(k1,k2+1)
real(8) :: c(k1,k2+1)

do      n=1,k2+1
  c(1:k1 , n )=b(1:k1, n )+ [ (dble(n),nn=1,k1) ]
end do     
do      n=1,k2+1
  bb(1:k1 , n )=c(1:k1, n )
end do     
b=bb
end
subroutine t1(k1,k2,a)
real(8) :: a(k1,k2+1)
real(8) :: aa(k1,k2+1)

forall (n=1:k2+1)
  aa(1:k1 , n )=a(1:k1, n )+[ (dble(n),nn=1,k1) ]
  a(1:k1 , n )=aa(1:k1, n )+[ (dble(n),nn=1,k1) ]
end forall

end
subroutine t2(k1,k2,b)
real(8) :: b(k1,k2+1)
real(8) :: bb(k1,k2+1)
real(8) :: c(k1,k2+1)

do      n=1,k2+1
  c(1:k1 , n )=b(1:k1, n )+ [ (dble(n),nn=1,k1) ]
end do     
do      n=1,k2+1
  bb(1:k1 , n )=c(1:k1, n )
end do     
do      n=1,k2+1
  c(1:k1 , n )=bb(1:k1, n )+ [ (dble(n),nn=1,k1) ]
end do     
do      n=1,k2+1
  b(1:k1 , n )=c(1:k1, n )
end do     
end

integer,parameter:: k1=5,k2=3
real(8):: a(k1,k2+1),b(k1,k2+1)
a=reshape([(n,n=1,20*3)],[5,4])
b=reshape([(n,n=1,20*3)],[5,4])
call s1(k1,k2,a)
call s2(k1,k2,b)
if (any(a/=b)) then 
print *,101
print *,a
print *,b
endif
a=reshape([(n,n=1,20*3)],[5,4])
b=reshape([(n,n=1,20*3)],[5,4])
call t1(k1,k2,a)
call t2(k1,k2,b)
if (any(a/=b)) then 
print *,102
print *,a
print *,b
endif
print *,'pass'
end
