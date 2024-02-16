call sub1;call sub2
print*,'pass'
end

subroutine sub1
integer*8 i,a(10)
a(1)=1
forall(i=2_8:1_8)
  a(i)=1
end forall
if(a(1).ne.1)print*,'ng1'
end

subroutine sub2
integer*8 i,a(10)
a(1)=1
forall(i=12345678900_8:1_8)
  a(i)=1
end forall
if(a(1).ne.1)print*,'ng2'
end
