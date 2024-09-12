 call s1
 write(6,*),'pass'
 end
 module m1
  integer::z1=1,z5=5,z3=3
   integer,parameter::kd=4
  integer::x=3
  contains
 subroutine i1c(i,j)
  integer(kd),dimension(:,:) ::i,j

  i=1;j=100

write(2,*),'start ins'
  call ins( (i(z1:2:z1,z1:z3:z1)),i(z1:2:z1,z1:z3:z1))
write(2,*),'start insx'
  call insx((i(z1:2:z1,z1:z3:z1))                    )
write(2,*),'start insx'
  call insx(                        i(z1:2:z1,z1:z3:z1))

  contains
    subroutine insx(k)
    integer(kd),dimension(2,3) ::k
if (loc(k)/=loc(i)) then 
    write(2,*),'Diff address i and dummy argument'
    write(2, '("k=",z16.16)')loc(k)
    write(2, '("i=",z16.16)')loc(i)
else
    write(2, '("k=",z16.16)')loc(k)
    write(2, '("i=",z16.16)')loc(i)
endif
    end subroutine
    subroutine ins(k2,k3)
    integer(kd),dimension(2,3) ::k2,k3
if (loc(k2)/=loc(k3)) then 
    write(2,*),'Diff address'
    write(2, '(" i=",z16.16)')loc( i)
    write(2, '("k2=",z16.16)')loc(k2)
    write(2, '("k3=",z16.16)')loc(k3)
else
    write(2, '(" i=",z16.16)')loc( i)
    write(2, '("k2=",z16.16)')loc(k2)
    write(2, '("k3=",z16.16)')loc(k3)
endif
    end subroutine
  end subroutine
end
 subroutine s1
  use m1
  integer(kd),dimension(2,3)::c,d
  call i1c(c,d)
 end
