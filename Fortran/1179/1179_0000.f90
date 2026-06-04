                    module m1
                              type y
                               integer::v
                              end type
                              contains
                                 type(y) function w()
                                  interface
                                    subroutine  iss(p)
                                     import r
                                      procedure(r),pointer,intent(in)::p
                                    end subroutine
                                   end interface
                                 w%v=100
                                call iss(r)
                               end function
                               type(y) function r()
                                  r%v=200
                                end function
                         end
                         use m1
                          type(y) :: res
                           res = w()
                           if(res%v .ne. 100) print*,"221"
                           print*,"sngg023j : pass"
                          end
                          subroutine  iss(p)
                           use m1
                            procedure(r),pointer,intent(in)::p
                            type(y) :: ret
                             ret =  p()
                             if(ret%v .ne. 200) print*,"121"
                          end


