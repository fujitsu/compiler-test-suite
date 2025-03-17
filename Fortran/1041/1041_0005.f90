program main
  integer arr(10)

  do cnt=1,1
    call ext_sub01(arr)
    if (all(arr.ne.(/1,2,3,4,5,6,7,8,9,10/))) stop "NG 01"
    call ext_ent_sub01(arr)
    if (all(arr.ne.(/11,12,13,14,15,16,17,18,19,20/))) stop "NG 02"
    do i=1,10
      arr(i)=ext_fun01(i)
    end do
    if (all(arr.ne.(/1,2,3,4,5,6,7,8,9,10/))) stop "NG 03"
    do i=1,10
      arr(i)=ext_ent_fun01(i)
    end do
    if (all(arr.ne.(/11,12,13,14,15,16,17,18,19,20/))) stop "NG 04"
  end do

  call ext_sub

  print *,"pass"
end

subroutine ext_sub01(Parr)
  integer,intent(out) :: Parr(10)

  do i=1,10
    Parr(i) = i
  end do
  return
entry ext_ent_sub01(Parr)
  do i=1,10
    Parr(i) = i + 10
  end do
  return
end

function ext_fun01(Pi)
  integer,intent(in) :: pi

  ext_fun01 = Pi
  return
entry ext_ent_fun01(Pi)
  ext_fun01 = Pi + 10
  return
end

subroutine ext_sub
  integer arr(10)

  do cnt=1,1
    call ext_sub01(arr)
    if (all(arr.ne.(/1,2,3,4,5,6,7,8,9,10/))) stop "NG 05"
    do i=1,10
      arr(i)=ext_ent_fun01(i)
    end do
    if (all(arr.ne.(/11,12,13,14,15,16,17,18,19,20/))) stop "NG 06"
  end do

  call sub

contains
subroutine sub
  integer arr(10)

  do cnt=1,1
    call ext_sub01(arr)
    if (all(arr.ne.(/1,2,3,4,5,6,7,8,9,10/))) stop "NG 07"
    do i=1,10
      arr(i)=ext_ent_fun01(i)
    end do
    if (all(arr.ne.(/11,12,13,14,15,16,17,18,19,20/))) stop "NG 08"
  end do
end subroutine
end
