                          module m1
                              type y
                               integer::v
                              end type
                              interface
                                subroutine  ss(p)
                                  import w
                                  procedure(w)::p
                              end
                           end interface
                           procedure(w),pointer::p
                          contains
                              type(y) function w()
                                 w%v=100
                              end
                         end
                         subroutine  ss(p)
                                use m1,only:w
                                procedure(w)::p
                                write(1,*)p()
                        end
                        use m1
                        procedure(w),pointer::x
                         x=>w
                         call ss(x)
rewind 1
read(1,*) k
if (k/=100) print *,1001
print *,'pass'
                         end
