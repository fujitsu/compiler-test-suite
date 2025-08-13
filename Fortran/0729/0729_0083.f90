module kind_type
  implicit none

  type, public :: fp_kind
      integer :: p, r, k
  end type fp_kind

  type, public :: int_kind
      integer :: r, k
  end type int_kind

end module kind_type

program kinds
  use kind_type
  implicit none

  type(int_kind), dimension(20) :: ik
  type(fp_kind), dimension(20)  :: fp
  integer :: dp, er, i, k, f1, f2

  fp = fp_kind(0,0,0)
  ik = int_kind(0,0)

  dp = 1
  i  = 0
  do
    f1 = selected_real_kind( p = dp )
    f2 = selected_real_kind( p = dp +1 )

    if (f1<1) then
       exit
    else if(f1/=f2) then
      er = 1
      do
        f1 = selected_real_kind( p = dp, r = er  )
        f2 = selected_real_kind( p = dp, r = er+1)
        if (f1<1) then
          exit
        else if (f1/=f2) then
          k = 1
          do
            if (k>i) then
              i = i + 1
              k = i
              exit
            else if (fp(k)%k==f1) then
              exit
            else
              k = k+1
            end if
          end do
          fp(k)%p = dp
          fp(k)%r = er
          fp(k)%k = f1
        end if
        er = er + 1
      end do
    end if
    dp = dp +1
  end do

  er = 1
  i  = 0
  do
    f1 = selected_int_kind (er  )
    f2 = selected_int_kind (er+1)

    if (f1<1) then
      exit
    else if (f1/=f2) then
      i = i +1
      ik(i)%r = er
      ik(i)%k = f1
    end if
    er = er +1
  end do

  write (unit=119,fmt="(A//A)") &
        " Floating Point Kinds implemented:" &
      , " Kind   Precision     Range"
  do i=1,count(fp%p>0)
     write(unit=119,fmt="(I5,I12,I10)") fp(i)%k, fp(i)%p, fp(i)%r
  end do
  write(unit=119,fmt="(//A//A)") &
        " Integer Kinds implemented:" &
       ," Kind   Range"
  do i=1,count( ik%r>0 )
     write(unit=119,fmt="(I5,I8)") ik(i)%k, ik(i)%r
  end do
print *,'pass'
end program kinds
