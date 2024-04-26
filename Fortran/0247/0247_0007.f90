integer, dimension(50) :: arr
integer :: i

type x1
integer::m
end type

type,extends(x1)::x2
integer::n
end type

type(x2),target::pt
class(*),pointer::cptr
cptr=>pt

forall (i=1:49)
  arr(i) = i
endforall


select case (arr(1))
 case(1)
  select case (arr(2))
   case(2)
    select case (arr(3))
     case(3)
      select case (arr(4))
       case(4)
        select case (arr(5))
         case(5)
          select case (arr(6))
           case(6)
            select case (arr(7))
             case(7)
              select case (arr(8))
               case(8)
                select case (arr(9))
                 case(9)
                  select case (arr(10))
                   case(10)
                    select case (arr(11))
                     case(11)
                      select case (arr(12))
                       case(12)
                        select case (arr(13))
                         case(13)
                          select case (arr(14))
                           case(14)
                            select case (arr(15))
                             case(15)
                              select case (arr(16))
                               case(16)
                                select case (arr(17))
                                 case(17)
                                  select case (arr(18))
                                   case(18)
                                    select case (arr(19))
                                     case(19)
                                      select case (arr(20))
                                       case(20)
                                        select case (arr(21))
                                         case(21)
                                          select case (arr(22))
                                           case(22)
                                            select case (arr(23))
                                             case(23)
                                              select case (arr(24))
                                               case(24)
                                                select case (arr(25))
                                                 case(25)
                                                  select case (arr(26))
                                                   case(26)
                                                    select case (arr(27))
                                                     case(27)
                                                      select case (arr(28))
                                                       case(28)
                                                        select case (arr(29))
                                                         case(29)
                                                          select case (arr(30))
                                                           case(30)
                    if (arr(31) .EQ. 31) then 
                     select case (arr(32))
                      case(32)
                       select case (arr(33))
                        case(33)
                         select case (arr(34))
                          case(34)
                           select case (arr(35))
                            case(35)
                             select case (arr(36))
                              case(36)
                               select case (arr(37))
                                case(37)
                                 select case (arr(38))
                                  case(38)
                                   select case (arr(39))
                                    case(39)
                                     select case (arr(40))
                                      case(40)
                                       select case (arr(41))
                                        case(41)
                                         select case (arr(42))
                                          case(42)
                                           select case (arr(43))
                                            case(43)
                                             select case (arr(44))
                                              case(44)
                                               select case (arr(45))
                                                case(45)
                                                 if (arr(46) .EQ. 46) then 
                                                  if (arr(47) .EQ. 47) then 
                                                   select type(cptr) 
                                                    type is (x2)
                                                      DO CONCURRENT (index_var1=10:4:-2,index_var1/=6)
                                                       if (index_var1 .EQ. 4) then
                                                        print *,'PASS'
                                                        end if
                                                      end do
                                                   end select
     end if
     end if
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end if
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
     end select
END
