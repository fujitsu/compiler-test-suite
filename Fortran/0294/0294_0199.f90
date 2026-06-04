type :: parent
real :: lower(10) = (/(i,i=1,10)/)
real :: upper(10) = (/(i,i=1,10)/)
end type
type,extends(parent) :: child
end type
type(child) :: sss
integer,pointer :: ppp (:,:,:)
integer,pointer :: ttt (:,:,:)
allocate(ttt(10,10,10) ,source=reshape((/(i,i=1,1000)/),(/10,10,10/)))
ppp(int(sss%parent%lower(1)):,int(sss%parent%lower(2)):,int(sss%parent%lower(3)):)=>ttt(int(sss%parent%lower(3)):int(sss%parent%upper(6)), &
                                        int(sss%parent%lower(3)):int(sss%parent%upper(6)), &
                                        int(sss%parent%lower(3)):int(sss%parent%upper(6)))
print *,ppp
ppp(int(sss%parent%lower(1)):,int(sss%parent%lower(2)):,int(sss%parent%lower(3)):)=>ttt((int(sss%parent%lower(3))):(int(sss%parent%upper(6))), &
                                        (int(sss%parent%lower(3))):(int(sss%parent%upper(6))), &
                                        (int(sss%parent%lower(3))):(int(sss%parent%upper(6))))
print *,ppp
ppp((int(sss%parent%lower(1))):,(int(sss%parent%lower(2))):,(int(sss%parent%lower(3))):)=>ttt((int(sss%parent%lower(3))):(int(sss%parent%upper(6))), &
                                              (int(sss%parent%lower(3))):(int(sss%parent%upper(6))), &
                                              (int(sss%parent%lower(3))):(int(sss%parent%upper(6))))
print *,ppp
ppp(int(sss%parent%lower(1)):int(sss%parent%upper(3)),int(sss%parent%lower(2)):int(sss%parent%upper(3)),int(sss%parent%lower(3)):int(sss%parent%upper(3)))=> &
                                        ttt(int(sss%parent%lower(3)):int(sss%parent%upper(7)), &
                                            int(sss%parent%lower(3)), &
                                            int(sss%parent%lower(3)))
print *,ppp
ppp(int((sss%parent%lower(1))):(int(sss%parent%upper(3))),(int(sss%parent%lower(2))):(int(sss%parent%upper(3))),(int(sss%parent%lower(3))):(int(sss%parent%upper(3))))=> &
                                      ttt(int(sss%parent%lower(3)):int(sss%parent%upper(7)), &
                                      int(sss%parent%lower(3)), &
                                      int(sss%parent%lower(3)))
print *,ppp
ppp(int(sss%parent%lower(1)):int(sss%parent%upper(3)),int(sss%parent%lower(2)):int(sss%parent%upper(3)),int(sss%parent%lower(3)):int(sss%parent%upper(3)))=> &
                                      ttt((int(sss%parent%lower(3))):(int(sss%parent%upper(7))), &
                                          (int(sss%parent%lower(4))), &
                                          (int(sss%parent%lower(4))))
print *,ppp
ppp(int(sss%parent%lower(1)):int(sss%parent%upper(3)),int(sss%parent%lower(2)):int(sss%parent%upper(3)),int(sss%parent%lower(3)):int(sss%parent%upper(3)))=> &
                                      ttt((int(sss%parent%lower(4))), &
                                          (int(sss%parent%lower(3))):(int(sss%parent%upper(7))), &
                                          (int(sss%parent%lower(4))))
print *,ppp
ppp(int(sss%parent%lower(1)):int(sss%parent%upper(3)),int(sss%parent%lower(2)):int(sss%parent%upper(3)),int(sss%parent%lower(3)):int(sss%parent%upper(3)))=> &
                                      ttt((int(sss%parent%lower(4))), &
                                          (int(sss%parent%lower(4))), &
                                          (int(sss%parent%lower(3))):(int(sss%parent%upper(7))))
print *,ppp
ppp(int(sss%parent%lower(1)):int(sss%parent%upper(3)),int(sss%parent%lower(2)):int(sss%parent%upper(3)),int(sss%parent%lower(3)):int(sss%parent%upper(3)))=> &
                       ttt((int(sss%parent%lower(7))-int(sss%parent%lower(4))):(int(sss%parent%upper(10))-int(sss%parent%upper(3))), &
                           (int(sss%parent%lower(10))-int(sss%parent%lower(6))), &
                           (int(sss%parent%lower(9))-int(sss%parent%lower(5))))
print *,ppp
ppp(int(sss%parent%lower(1)):int(sss%parent%upper(3)),int(sss%parent%lower(2)):int(sss%parent%upper(3)),int(sss%parent%lower(3)):int(sss%parent%upper(3)))=> &
                       ttt((int(sss%parent%lower(7))-int(sss%parent%lower(3))), &
                           (int(sss%parent%lower(7))-int(sss%parent%lower(4))):(int(sss%parent%upper(10))-int(sss%parent%upper(3))), &
                           (int(sss%parent%lower(9))-int(sss%parent%lower(5))))
print *,ppp
ppp(int(sss%parent%lower(1)):int(sss%parent%upper(3)),int(sss%parent%lower(2)):int(sss%parent%upper(3)),int(sss%parent%lower(3)):int(sss%parent%upper(3)))=> &
                       ttt((int(sss%parent%lower(9))-int(sss%parent%lower(5))), &
                           (int(sss%parent%lower(7))-int(sss%parent%lower(3))), &
                           (int(sss%parent%lower(7))-int(sss%parent%lower(4))):(int(sss%parent%upper(10))-int(sss%parent%upper(3))))
print *,ppp
print *,'ok'
end
