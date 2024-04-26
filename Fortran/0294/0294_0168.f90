module mod
real :: lower(10) = (/(i,i=1,10)/)
real :: upper(10) = (/(i,i=1,10)/)
integer,pointer :: ppp (:,:,:)
integer,pointer :: ttt (:,:,:)
end module

use mod
allocate(ttt(10,10,10) ,source=reshape((/(i,i=1,1000)/),(/10,10,10/)))
ppp(int(lower(1)):,int(lower(2)):,int(lower(3)):)=>ttt(int(lower(3)):int(upper(6)), &
                                        int(lower(3)):int(upper(6)), &
                                        int(lower(3)):int(upper(6)))
print *,ppp
ppp(int(lower(1)):,int(lower(2)):,int(lower(3)):)=>ttt((int(lower(3))):(int(upper(6))), &
                                        (int(lower(3))):(int(upper(6))), &
                                        (int(lower(3))):(int(upper(6))))
print *,ppp
ppp((int(lower(1))):,(int(lower(2))):,(int(lower(3))):)=>ttt((int(lower(3))):(int(upper(6))), &
                                              (int(lower(3))):(int(upper(6))), &
                                              (int(lower(3))):(int(upper(6))))
print *,ppp
ppp(int(lower(1)):int(upper(3)),int(lower(2)):int(upper(3)),int(lower(3)):int(upper(3)))=> &
                                        ttt(int(lower(3)):int(upper(7)), &
                                            int(lower(3)), &
                                            int(lower(3)))
print *,ppp
ppp(int((lower(1))):(int(upper(3))),(int(lower(2))):(int(upper(3))),(int(lower(3))):(int(upper(3))))=> &
                                      ttt(int(lower(3)):int(upper(7)), &
                                      int(lower(3)), &
                                      int(lower(3)))
print *,ppp
ppp(int(lower(1)):int(upper(3)),int(lower(2)):int(upper(3)),int(lower(3)):int(upper(3)))=> &
                                      ttt((int(lower(3))):(int(upper(7))), &
                                          (int(lower(4))), &
                                          (int(lower(4))))
print *,ppp
ppp(int(lower(1)):int(upper(3)),int(lower(2)):int(upper(3)),int(lower(3)):int(upper(3)))=> &
                                      ttt((int(lower(4))), &
                                          (int(lower(3))):(int(upper(7))), &
                                          (int(lower(4))))
print *,ppp
ppp(int(lower(1)):int(upper(3)),int(lower(2)):int(upper(3)),int(lower(3)):int(upper(3)))=> &
                                      ttt((int(lower(4))), &
                                          (int(lower(4))), &
                                          (int(lower(3))):(int(upper(7))))
print *,ppp
ppp(int(lower(1)):int(upper(3)),int(lower(2)):int(upper(3)),int(lower(3)):int(upper(3)))=> &
                       ttt((int(lower(7))-int(lower(4))):(int(upper(10))-int(upper(3))), &
                           (int(lower(10))-int(lower(6))), &
                           (int(lower(9))-int(lower(5))))
print *,ppp
ppp(int(lower(1)):int(upper(3)),int(lower(2)):int(upper(3)),int(lower(3)):int(upper(3)))=> &
                       ttt((int(lower(7))-int(lower(3))), &
                           (int(lower(7))-int(lower(4))):(int(upper(10))-int(upper(3))), &
                           (int(lower(9))-int(lower(5))))
print *,ppp
ppp(int(lower(1)):int(upper(3)),int(lower(2)):int(upper(3)),int(lower(3)):int(upper(3)))=> &
                       ttt((int(lower(9))-int(lower(5))), &
                           (int(lower(7))-int(lower(3))), &
                           (int(lower(7))-int(lower(4))):(int(upper(10))-int(upper(3))))
print *,ppp
print *,'ok'
end
