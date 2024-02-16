integer a(10,10,10)
forall (i=ifun1():ifun2():ifun3(), &
        j=ifun1():ifun2():ifun3(), &
        k=ifun1():ifun2():ifun3() )
  a(i,j,k)=i+j+k
end forall 

i1=ifun1();i2=ifun2();i3=ifun3()
do i=i1,i2,i3
do j=i1,i2,i3
do k=i1,i2,i3
 if(a(i,j,k).ne.i+j+k)print*,'ng',i,j,k
enddo;enddo;enddo
print*,'pass'
end

function ifun1(); ifun1=1;  end function
function ifun2(); ifun2=10; end function
function ifun3(); ifun3=2;  end function
