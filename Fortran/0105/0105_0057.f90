subroutine s2
complex(8)::r81(4,3),r82(3),r83(3,4)
complex(8)::r8(4)
complex(8)::cx=(103,401)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
r8=cx
r8=2*r8- matmul(r81,r82)
if (any(abs((/r8/)-(/&
(2930.,-2830.),(3038.,-2974.),(3146.,-3118.),(3254.,-3262.)&
/))>10.))print *,2
r8=cx
r8=2.*r8-matmul(transpose(r83),r82)

if (any(abs((/r8/)-(/&
(2588.,-2374.),(2912.,-2806.),(3236.,-3238.),(3560.,-3670.)&
/))>10.))print *,2
end
subroutine s21
complex(4)::r81(4,3),r82(3),r83(3,4)
complex(4)::r8(4)
complex(8)::cx=(103,401)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
r8=cx
r8=2*r8- matmul(r81,r82)
if (any(abs((/r8/)-(/&
(2930.,-2830.),(3038.,-2974.),(3146.,-3118.),(3254.,-3262.)&
/))>10.))print *,2
r8=cx
r8=2.*r8-matmul(transpose(r83),r82)
if (any(abs((/r8/)-(/&
(2588.,-2374.),(2912.,-2806.),(3236.,-3238.),(3560.,-3670.)&
/))>10.))print *,2
end
call s2
call s21
print *,'pass'
end
