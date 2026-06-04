subroutine sub1(a,b,n,m)
REAL A(20),B(20)
!OCL NOVREC
DO I=2,10
A(I) = A(I+N) + 1
B(I) = B(I+M) + 2
ENDDO
end subroutine

subroutine sub2(a,b,n)
REAL A(20),B(20)
!OCL NOVREC(A)
DO I=2,10
A(I) = A(I+N) + 1
B(I) = B(I) + 2
ENDDO
end subroutine

subroutine sub3(a,b,n,m)
real a(20),b(20)
!OCL NOVREC
DO I=1,N
A(I) = A(I+M)+1
B(I) = B(I)+1
ENDDO
end subroutine

program main
real a(20), b(20)
a = 0
b = 0
call sub1(a,b,0,0)
if (.not.all(a(2:10).eq.1)) then
   print *,'NG1',a
endif
if (.not.all(b(2:10).eq.2)) then
   print *,'NG2',b
endif
a = 0
b = 0
call sub2(a,b,0)
if (.not.all(a(2:10).eq.1)) then
   print *,'NG3',a
endif
if (.not.all(b(2:10).eq.2)) then
   print *,'NG4',b
endif
a = 0
b = 0
call sub3(a,b,20,0)
if (.not.all(a.eq.1)) then
   print *,'NG5',a
endif
if (.not.all(b.eq.1)) then
   print *,'NG6',b
endif
print *,'PASS'
end
