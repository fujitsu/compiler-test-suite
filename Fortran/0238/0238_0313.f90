 subroutine test(dest,a,b,n1)
   logical(kind=8), dimension(n1) :: dest,a,b

   do i=1,n1
      if(merge(1,0,a(i)) .lt. merge(1,0,b(i))) then
        dest(i) = merge(.true.,.false.,a(i))
      else
        dest(i) = merge(.true.,.false.,b(i))
      endif
   enddo
 end subroutine test

integer,parameter::n1=3
logical(kind=8), dimension(n1) :: dest,a,b
dest=.true.
a=.true.
b=.true.
call test(dest,a,b,n1)
print *,'pass'
end
