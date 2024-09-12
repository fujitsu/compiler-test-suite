module m1
contains
subroutine s1
call in1
call in2
contains
subroutine in1
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
do k=1,2
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
r8=0
end do
end subroutine
subroutine in2
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
do k=1,2
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
r8=0
end do
end subroutine
end subroutine
subroutine s2
call in1
call in2
contains
subroutine in1
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
do k=1,2
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
r8=0
end do
end subroutine
subroutine in2
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
do k=1,2
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
r8=0
end do
end subroutine
end subroutine
subroutine s3
call in1
call in2
call in3
contains
subroutine in1
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
do k=1,2
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
r8=0
end do
end subroutine
subroutine in2
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
do k=1,2
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
r8=0
end do
end subroutine
subroutine in3
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
do k=1,2
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
r8=0
end do
end subroutine
end subroutine
subroutine s4
call in1
call in2
call in3
contains
subroutine in1
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
do k=1,2
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
r8=0
end do
end subroutine
subroutine in2
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
do k=1,2
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
r8=0
end do
end subroutine
subroutine in3
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
do k=1,2
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
r8=0
end do
end subroutine
end subroutine
end
use m1
call s1
call s2
call s3
call s4
print *,'pass'
end
