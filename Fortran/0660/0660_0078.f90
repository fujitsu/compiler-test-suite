call test01()
print *,'pass' 
end

subroutine test01()
integer a(5,4,3,2,1)
n=5
if :forall (i1=1:n,.true.)
 forall :forall (i2=1:i1-1,.true.)
  do :forall (i3=1:i2-1,.true.)
   forall (i4=1:i3-1,.true.)
    forall (i5=1:i4-1,.true.)
      a(i1,i2,i3,i4,i5)=i1+i2+i3+i4+i5
    end forall
   end forall
  end forall do
 end forall forall
end forall if
end subroutine
