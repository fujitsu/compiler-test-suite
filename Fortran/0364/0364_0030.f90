module mod
integer stopper
end module mod
!
module mod_test
use mod
private mod_name
public  ma
private mb,mc
namelist /mod_name/ma,mb,mc
contains
  recursive subroutine mod_sub
  namelist /mod_sub_name/msa,msb,msc
  call mod_ch_sub
  return
  contains
    recursive subroutine mod_ch_sub
    namelist /mod_ch_sub_name/mcsa,mcsb,mcsc
    if ( stopper > 0 ) then
       read(5,nml=mod_name)
       read(5,nml=mod_sub_name)
       read(5,nml=mod_ch_sub_name)
       print *,'Now mod_ch_sub. Stopper is ',stopper
       stopper=stopper-1
       write(6,nml=mod_name)
       write(6,nml=mod_sub_name)
       write(6,nml=mod_ch_sub_name)
       call start_sub
    endif
    if ( stopper == 0 ) then
       write(6,nml=mod_name)
       stopper=stopper-1        
       call start_sub
    endif
    if ( stopper < 0 ) then
       print *,'test end'
       stopper=stopper-1        
    endif
    return
    end subroutine mod_ch_sub
  end subroutine mod_sub
end module mod_test
!
recursive subroutine start_sub
use mod_test
call mod_sub
return
end 
!
program main
use mod
stopper=3
call start_sub
stop
end
