      call s1
      print *,'pass'
      end
      subroutine s1
implicit none
integer,parameter::maxval=10
integer ::n,k
do k=1,maxval
 do n=k,maxval
  write(1,*)n,k,'answer = ',Doit(n,k)
 end do
end do
contains
recursive integer function Doit(n,k) result(answer)
integer,intent(in)::n, &
                    k
if (k==0 .or. k==n) then
answer=1
else
  answer =Doit(n-1,k-1)+Doit(n-1,k)
endif
end function Doit
end
