!
!
!

subroutine sub(ptr)
  pointer (ptr, vvv)
  integer, dimension(10) :: vvv
  integer, dimension(20) :: aaa
  ptr = loc(aaa)
  vvv = 10
!$omp task
  do i=1,10
     if (aaa(i)/=10) then
        print *,"NG vvv(",i,")=",vvv(i)," aaa(",i,")=",aaa(i)
     end if
  end do
  vvv(1) = 20
!$omp end task
end

pointer(vvv,a)
vvv=loc(b)
a=5
call sub(vvv)
print *,"pass"
end
