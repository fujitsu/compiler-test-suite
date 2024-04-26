module mod
type :: str
real :: lower(10) = (/(i,i=1,10)/)
real :: upper(10) = (/(i,i=1,10)/)
end type
type (str),save :: sss
integer,pointer :: ppp (:,:,:)
integer,pointer :: ttt (:,:,:)
end module

use mod
allocate(ttt(10,10,10) ,source=reshape((/(i,i=1,1000)/),(/10,10,10/)))
ppp(int(sss%lower(1)):,int(sss%lower(2)):,int(sss%lower(3)):)=>ttt(int(sss%lower(3)):int(sss%upper(6)), &
                                        int(sss%lower(3)):int(sss%upper(6)), &
                                        int(sss%lower(3)):int(sss%upper(6)))
print *,ppp
ppp(int(sss%lower(1)):,int(sss%lower(2)):,int(sss%lower(3)):)=>ttt((int(sss%lower(3))):(int(sss%upper(6))), &
                                        (int(sss%lower(3))):(int(sss%upper(6))), &
                                        (int(sss%lower(3))):(int(sss%upper(6))))
print *,ppp
ppp((int(sss%lower(1))):,(int(sss%lower(2))):,(int(sss%lower(3))):)=>ttt((int(sss%lower(3))):(int(sss%upper(6))), &
                                              (int(sss%lower(3))):(int(sss%upper(6))), &
                                              (int(sss%lower(3))):(int(sss%upper(6))))
print *,ppp
ppp(int(sss%lower(1)):int(sss%upper(3)),int(sss%lower(2)):int(sss%upper(3)),int(sss%lower(3)):int(sss%upper(3)))=> &
                                        ttt(int(sss%lower(3)):int(sss%upper(7)), &
                                            int(sss%lower(3)), &
                                            int(sss%lower(3)))
print *,ppp
ppp(int((sss%lower(1))):(int(sss%upper(3))),(int(sss%lower(2))):(int(sss%upper(3))),(int(sss%lower(3))):(int(sss%upper(3))))=> &
                                      ttt(int(sss%lower(3)):int(sss%upper(7)), &
                                      int(sss%lower(3)), &
                                      int(sss%lower(3)))
print *,ppp
ppp(int(sss%lower(1)):int(sss%upper(3)),int(sss%lower(2)):int(sss%upper(3)),int(sss%lower(3)):int(sss%upper(3)))=> &
                                      ttt((int(sss%lower(3))):(int(sss%upper(7))), &
                                          (int(sss%lower(4))), &
                                          (int(sss%lower(4))))
print *,ppp
ppp(int(sss%lower(1)):int(sss%upper(3)),int(sss%lower(2)):int(sss%upper(3)),int(sss%lower(3)):int(sss%upper(3)))=> &
                                      ttt((int(sss%lower(4))), &
                                          (int(sss%lower(3))):(int(sss%upper(7))), &
                                          (int(sss%lower(4))))
print *,ppp
ppp(int(sss%lower(1)):int(sss%upper(3)),int(sss%lower(2)):int(sss%upper(3)),int(sss%lower(3)):int(sss%upper(3)))=> &
                                      ttt((int(sss%lower(4))), &
                                          (int(sss%lower(4))), &
                                          (int(sss%lower(3))):(int(sss%upper(7))))
print *,ppp
ppp(int(sss%lower(1)):int(sss%upper(3)),int(sss%lower(2)):int(sss%upper(3)),int(sss%lower(3)):int(sss%upper(3)))=> &
                       ttt((int(sss%lower(7))-int(sss%lower(4))):(int(sss%upper(10))-int(sss%upper(3))), &
                           (int(sss%lower(10))-int(sss%lower(6))), &
                           (int(sss%lower(9))-int(sss%lower(5))))
print *,ppp
ppp(int(sss%lower(1)):int(sss%upper(3)),int(sss%lower(2)):int(sss%upper(3)),int(sss%lower(3)):int(sss%upper(3)))=> &
                       ttt((int(sss%lower(7))-int(sss%lower(3))), &
                           (int(sss%lower(7))-int(sss%lower(4))):(int(sss%upper(10))-int(sss%upper(3))), &
                           (int(sss%lower(9))-int(sss%lower(5))))
print *,ppp
ppp(int(sss%lower(1)):int(sss%upper(3)),int(sss%lower(2)):int(sss%upper(3)),int(sss%lower(3)):int(sss%upper(3)))=> &
                       ttt((int(sss%lower(9))-int(sss%lower(5))), &
                           (int(sss%lower(7))-int(sss%lower(3))), &
                           (int(sss%lower(7))-int(sss%lower(4))):(int(sss%upper(10))-int(sss%upper(3))))
print *,ppp
print *,'ok'
end
