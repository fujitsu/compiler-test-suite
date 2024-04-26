
subroutine s01
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))

do k=1,2
r8=matmul(r81,r82)  
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
r8=0
end do
end

subroutine s02
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))

do k=1,2

r8=matmul(r81,r82)  
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
r8=0
end do
end
subroutine s03
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))

do k=1,2

r8=matmul(r81,r82)  
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
r8=0
end do
end
subroutine s04
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))

do k=1,2
  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101

  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101

    do kk=1,2
    r8=matmul(r81,r82)  
    if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
    r8=0
    end do
  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
  r8=0
end do
end

subroutine s05
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))

do k=1,2
  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101

  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101

    do kk=1,2
    r8=matmul(r81,r82)  
    if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
    r8=0
    end do
  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
  r8=0
end do
end

subroutine s06
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))

do k=1,2
  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101

  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101

    do kk=1,2
    r8=matmul(r81,r82)  
    if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
    r8=0
      do kkk=1,2
        r8=matmul(r81,r82)  
        if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
        r8=0
      end do
    end do
  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
  r8=0
end do
end

subroutine s07
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))

do 100 k=1,2
  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101

  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101

    do 100 kk=1,2
    r8=matmul(r81,r82)  
    if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
    r8=0
      do 100 kkk=1,2
        r8=matmul(r81,r82)  
        if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
        r8=0
100 continue
  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
  r8=0
end

subroutine s08
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))

do 100 k=1,2
  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101

  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101

    do 100 kk=1,2
    r8=matmul(r81,r82)  
    if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
    r8=0

      do 100 kkk=1,2
        r8=matmul(r81,r82)  
        if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
        r8=0
100 continue
  r8=matmul(r81,r82)  
  if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
  r8=0
end
call s01
call s02
call s03
call s04
call s05
call s06
call s07
call s08
print *,'pass'
end
