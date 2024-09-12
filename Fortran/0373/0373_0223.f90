subroutine sub1
integer a(10)
data a/10*1/
do i=1,10
  a(i)=a(i)+1
enddo
print*,a(1)
end 

subroutine sub2
integer a(10)
data a/10*1/
do i=1,10
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
  a(i)=a(i)+1
end do
print*,a(1)
end

call sub1; call sub2; end
