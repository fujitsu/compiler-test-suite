PROGRAM MAIN
REAL::e(10)
REAL,parameter::a(10)=35.1_4
integer,parameter:: k = 4_4
REAL::d(10)= scale(a(1), k)
Integer :: l = kind(scale(a(1), k))
e= scale(a(1), k)

do i=1,10
call check(d(i),e(i))

enddo
call check1(l,kind(scale(a(1), k)))
END

subroutine check(x,y)
REAL  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->R) ???'
else
print*," R->R OK"
endif
end subroutine

subroutine check1(x,y)
      integer x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (KIND Error:) ???'
      else
        print*, "KIND OK"
      endif
end subroutine
