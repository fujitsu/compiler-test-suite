module mod
integer :: lower(10) = (/(i,i=1,10)/)
integer :: upper(10) = (/(i,i=1,10)/)
integer,pointer :: ppp (:,:,:)
integer,pointer :: ttt (:,:,:)
end module

use mod
allocate(ttt(10,10,10) ,source=reshape((/(i,i=1,1000)/),(/10,10,10/)))
ppp(lower(1):,lower(2):,lower(3):)=>ttt(lower(3):upper(6), &
                                        lower(3):upper(6), &
                                        lower(3):upper(6))
print *,ppp
ppp(lower(1):,lower(2):,lower(3):)=>ttt((lower(3)):(upper(6)), &
                                        (lower(3)):(upper(6)), &
                                        (lower(3)):(upper(6)))
print *,ppp
ppp((lower(1)):,(lower(2)):,(lower(3)):)=>ttt((lower(3)):(upper(6)), &
                                              (lower(3)):(upper(6)), &
                                              (lower(3)):(upper(6)))
print *,ppp
ppp(lower(1):upper(3),lower(2):upper(3),lower(3):upper(3))=> &
                                        ttt(lower(3):upper(7), &
                                        lower(3), &
                                        lower(3))
print *,ppp
ppp((lower(1)):(upper(3)),(lower(2)):(upper(3)),(lower(3)):(upper(3)))=> &
                                      ttt(lower(3):upper(7), &
                                      lower(3), &
                                      lower(3))
print *,ppp
ppp(lower(1):upper(3),lower(2):upper(3),lower(3):upper(3))=> &
                                      ttt((lower(3)):(upper(7)), &
                                          (lower(4)), &
                                          (lower(4)))
print *,ppp
ppp(lower(1):upper(3),lower(2):upper(3),lower(3):upper(3))=> &
                                      ttt((lower(4)), &
                                          (lower(3)):(upper(7)), &
                                          (lower(4)))
print *,ppp
ppp(lower(1):upper(3),lower(2):upper(3),lower(3):upper(3))=> &
                                      ttt((lower(4)), &
                                          (lower(4)), &
                                          (lower(3)):(upper(7)))
print *,ppp
ppp(lower(1):upper(3),lower(2):upper(3),lower(3):upper(3))=> &
                       ttt((lower(7)-lower(4)):(upper(10)-upper(3)), &
                           (lower(10)-lower(6)), &
                           (lower(9)-lower(5)))
print *,ppp
ppp(lower(1):upper(3),lower(2):upper(3),lower(3):upper(3))=> &
                       ttt((lower(7)-lower(3)), &
                           (lower(7)-lower(4)):(upper(10)-upper(3)), &
                           (lower(9)-lower(5)))
print *,ppp
ppp(lower(1):upper(3),lower(2):upper(3),lower(3):upper(3))=> &
                       ttt((lower(9)-lower(5)), &
                           (lower(7)-lower(3)), &
                           (lower(7)-lower(4)):(upper(10)-upper(3)))
print *,ppp
print *,'ok'
end
