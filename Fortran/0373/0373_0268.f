 call s1
 print *,'pass'
 end
 module m1
  integer::z1=1,z5=5,z3=3
   integer,parameter::kd=4
  integer::x=3
  contains
 subroutine i1c(i,j)
  integer(kd),dimension(:,:) ::i,j

  write(6,*) ' ilc - start '

  i=1;j=100

  write(6,*) ' i1c - 0 ',j

  call ins(j(z1:2:z1,z1:z3:z1), &
(i(z1:2:z1,z1:z3:z1)),i(z1:2:z1,z1:z3:z1))

  write(6,*) ' i1c - 1 ',j
  contains
    subroutine ins(k1,k2,k3)
    integer(kd),dimension(2,3) ::k1,k2,k3
    k3=2; k1=k2

    write(6,*) ' sub-ins ',k1
    end subroutine
  end subroutine
end
 subroutine s1
  use m1
  integer(kd),dimension(5)::a,b
  integer(kd),dimension(2,3)::c,d
  call i1c(c,d)
 end

