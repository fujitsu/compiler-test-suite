
program main
  integer y(10,10,10)/1000*0/
  integer n1,n2,n3
  n1 = y(1,1,1)
  n2 = y(2,2,2)
  n3 = y(1,2,2)
  m = ifunc1(n1,n2,n3,y, 1)
  m = m + ifunc2(n1,n2,n3,y, 2)
  m = m + ifunc3(n1,n2,n3,y, 3)
  m = m + ifunc4(n1,n2,n3,y, 4)
  m = m + ifunc5(n1,n2,n3,y, 5)
  m = m + ifunc6(n1,n2,n3,y, 6)
  if (m .eq. 0) then
     write(6,*) "OK"
  endif
end program main

integer function ifunc1(n1,n2,n3,y, num)
  integer y(n1,n2,n3)
  i=3
  j=3
  k=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG(",num,")", i,j,k,n1,y(1,1,1)
     ifunc1 = 1
  else
     ifunc1 = 0
  endif
  i=3
  j=3
  k=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 ) then
     print *,"NG(",num,")", i,n1,y(1,1,1)
     ifunc1 = 1
  else
     ifunc1 = 0
  endif
  i=3
  j=3
  k=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (j.ne.3) then
     print *,"NG(",num,")", j,n1,y(1,1,1)
     ifunc1 = 1
  else
     ifunc1 = 0
  endif
  i=3
  j=3
  k=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (k.ne.1) then
     print *,"NG(",num,")", k,n1,y(1,1,1)
     ifunc1 = 1
  else
     ifunc1 = 0
  endif
  return
  end

  integer function ifunc2(n1,n2,n3,y, num)
  integer y(n1,n2,n3)
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG(",num,")", i,j,k,n1,y(1,1,1)
     ifunc2 = 1
  else
     ifunc2 = 0
  endif
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 ) then
     print *,"NG(",num,")", i,n1,y(1,1,1)
     ifunc2 = 1
  else
     ifunc2 = 0
  endif
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (j.ne.3 ) then
     print *,"NG(",num,")", j,n1,y(1,1,1)
     ifunc2 = 1
  else
     ifunc2 = 0
  endif
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (k.ne.1) then
     print *,"NG(",num,")", k,n1,y(1,1,1)
     ifunc2 = 1
  else
     ifunc2 = 0
  endif
  return
  end

  integer function ifunc3(n1,n2,n3,y, num)
  integer y(n1,n2,n3)
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG(",num,")", i,j,k,n1,y(1,1,1)
     ifunc3 = 1
  else
     ifunc3 = 0
  endif
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 ) then
     print *,"NG(",num,")", i,n1,y(1,1,1)
     ifunc3 = 1
  else
     ifunc3 = 0
  endif
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (j.ne.3 ) then
     print *,"NG(",num,")", j,n1,y(1,1,1)
     ifunc3 = 1
  else
     ifunc3 = 0
  endif
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (k.ne.1) then
     print *,"NG(",num,")", k,n1,y(1,1,1)
     ifunc3 = 1
  else
     ifunc3 = 0
  endif
  return
  end

  integer function ifunc4(n1,n2,n3,y, num)
  integer y(n1,n2,n3)
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG(",num,")", i,j,k,n1,y(1,1,1)
     ifunc4 = 1
  else
     ifunc4 = 0
  endif
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 ) then
     print *,"NG(",num,")", i,n1,y(1,1,1)
     ifunc4 = 1
  else
     ifunc4 = 0
  endif
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (j.ne.3 ) then
     print *,"NG(",num,")", j,n1,y(1,1,1)
     ifunc4 = 1
  else
     ifunc4 = 0
  endif
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (k.ne.1) then
     print *,"NG(",num,")", k,n1,y(1,1,1)
     ifunc4 = 1
  else
     ifunc4 = 0
  endif
  return
  end

  integer function ifunc5(n1,n2,n3,y, num)
  integer y(n1,n2,n3)
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG(",num,")", i,j,k,n1,y(1,1,1)
     ifunc5 = 1
  else
     ifunc5 = 0
  endif
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 ) then
     print *,"NG(",num,")", i,n1,y(1,1,1)
     ifunc5 = 1
  else
     ifunc5 = 0
  endif
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (j.ne.3 ) then
     print *,"NG(",num,")", j,n1,y(1,1,1)
     ifunc5 = 1
  else
     ifunc5 = 0
  endif
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (k.ne.1) then
     print *,"NG(",num,")", k,n1,y(1,1,1)
     ifunc5 = 1
  else
     ifunc5 = 0
  endif
  return
  end

  integer function ifunc6(n1,n2,n3,y, num)
  integer y(n1,n2,n3)
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 .or. j.ne.3 .or. k.ne.1) then
     print *,"NG(",num,")", i,j,k,n1,y(1,1,1)
     ifunc6 = 1
  else
     ifunc6 = 0
  endif
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (i.ne.3 ) then
     print *,"NG(",num,")", i,n1,y(1,1,1)
     ifunc6 = 1
  else
     ifunc6 = 0
  endif
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (j.ne.3) then
     print *,"NG(",num,")", j,n1,y(1,1,1)
     ifunc6 = 1
  else
     ifunc6 = 0
  endif
  i=3
  j=3
  do k=1,n1
     do i=1,10
        do j=1,10
           y(k,i,j) = 1
        enddo
     enddo
  enddo
  if (k.ne.1) then
     print *,"NG(",num,")", j,n1,y(1,1,1)
     ifunc6 = 1
  else
     ifunc6 = 0
  endif
  return
  end
