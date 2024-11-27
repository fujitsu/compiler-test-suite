    type et1
      integer(2),allocatable :: e1(:)
    end type et1

    type(et1) :: v11

    real(8),allocatable :: vs1(:)

    v11 = et1((/(1.,2.),(3.,4.)/))
    if (v11%e1(1)/=1)write(6,*) "NG"
    if (v11%e1(2)/=3)write(6,*) "NG"

    allocate (vs1(1:2))
    vs1 = (/123.,456./)
    v11 = et1(vs1)
    if (v11%e1(1)/=123)write(6,*) "NG"
    if (v11%e1(2)/=456)write(6,*) "NG"

print *,'pass'
  end 

