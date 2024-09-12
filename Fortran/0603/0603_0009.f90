                                     module m1
                                       integer,target::t =20
                                       type b0
                                         integer,pointer::ptr
                                         integer::x1=1
                                       end type
                                       type,extends( b0) :: b1
                                         integer::y1=2
                                       end type
                                       type(b0),target,save :: trg
                                       type(b1),target,save :: trg2
                                    end
                                    module m2
                                       use m1,tb0=>b0, tb1=>b1
                                       type b0
                                         integer,pointer::ptr2
                                         integer::y1= 3
                                       end type
                                       type,extends(tb1)::e1
                                         type(b0)::e11 = b0(t,10)
                                         type(tb1) :: b1
                                         integer::e12 = 4
                                       end type
                                        type(e1),target,save :: trg3
                                        type(tb1),target,save :: trg4
                                        type ty2
                                             class(tb0),pointer::ptr
                                             class(tb0),pointer::ptr2
                                        end type
                                        type(ty2)::obj3 = ty2(trg4,trg3)
                                        type(ty2)::obj4 = ty2(trg,trg2)
                                      contains 
                                     subroutine sub()
                                     select type(A=>obj3%ptr)
                                      type is(tb1)
                                      if(A%x1.ne.1)print*,"101"
                                      class default
                                       print*,"322"
                                      end select 
                                     select type(A=>obj3%ptr2)
                                     type is(e1)
                                      if(A%y1.ne.2)print*,"101"
                                     class default
                                     print*,"324"
                                     end select 
                                    select type(A=>obj4%ptr)
                                      type is(tb0)
                                      if(A%x1.ne.1)print*,"101"
                                      class default
                                       print*,"332"
                                      end select
                                     select type(A=>obj4%ptr2)
                                     type is(tb1)
                                      if(A%y1.ne.2)print*,"101"
                                     class default
                                      print*,"344"
                                     end select
                                    end 
                                    end module 
                                    use m2
                                     call sub()
                                     print*,"PASS"
                                     end
