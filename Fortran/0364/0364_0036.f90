program main
integer*4        ::i4ans,i4func
integer*4,pointer::cp0,cp1,cp2
common /cmp/cp0,cp1,cp2

i4ans=i4func(-1)
select case ( 0 )
case (0)
  i4ans=i4func(0)
  select case ( cp0 )
    case (1)
      i4ans=i4func(cp0)
      select case ( cp1 )
        case (2)
          i4ans=i4func(cp1)
          select case (cp0+cp1+cp2)   
            case (7)
              print *,'test end'
              stop
            case default
              print *,'ng default'
          end select
        case (3)
          print *,'ng 3'
        case default
          print *,'ng 3 default'
          print *,cp1
      end select
    case (2)
      print *,'ng 2'
    case default
      print *,'ng 2 default'
  end select
case (1) 
  print *,'ng 1'
case default
  print *,'ng 1 default'
end select
end
!
integer*4 function i4func(val)
integer*4 val
integer*4,target ::case0,case1,case2
integer*4,pointer::c0p,  c1p,  c2p
common /com/case0,case1,case2
common /cmp/c0p,c1p,c2p
!
i4func=0
do i=1,1
select case (val)
  case (-1)
    case0=0;case1=0;case2=0
    nullify(c0p);nullify(c1p);nullify(c2p)
  case ( 0)
    c0p=>case0
    case0=case0+case1+case2+1
    i4func=case0
  case ( 1)
    c1p=>case1
    case1=case0+case1+case2+1
    i4func=case1
  case ( 2)
    c2p=>case2
    case2=case0+case1+case2+1
    i4func=case2
  case default
    case0=-99;case1=-99;case2=-99
    nullify(c0p);nullify(c1p);nullify(c2p)
    i4func=-1
end select
enddo
return
end function i4func


