interface
function fun()
integer::fun
end function
end interface

if (fun() /= 10) print*,"911"
print*, "PASS"
end

function fun()
integer::fun
integer :: i,j,counter=0
integer,allocatable::aa(:)

allocate(aa(3))
aa(1) = 1
aa(2) = 2
aa(3) = 3

do j = 1,4
 a1: associate(a=>aa(1)*aa(2))
   do i=1,j+1
   b1:block
    a2: associate(b=>aa(2)*aa(3))
     counter=counter+1
     if (i==j) exit a1
    end associate a2
   end block b1
   if(i==j) print*, "912"
   end do
 end associate a1

 if(i /= j) print*,"101"
end do

fun = counter
end
