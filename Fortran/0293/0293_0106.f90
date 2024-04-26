module typdcl
  type drv
    integer   int
    character chr
    logical   log
  endtype
endmodule 

module operator
  use typdcl
endmodule

module namelist
  use typdcl
  use operator
  implicit none
  type (drv) host1,host2,host3
  namelist /host/host1
  contains
  subroutine modsub()
    call set2()
  endsubroutine 
  subroutine set2(drv_11)
    type (drv),optional,intent(out) :: drv_11
    if (present(drv_11)) drv_11 = drv(1,"111",.true.)
  end subroutine
endmodule 

program main
  use namelist,only:modsub
  call modsub()
  print *,'pass'
end program
