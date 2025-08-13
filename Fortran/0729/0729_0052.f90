program x
  character (len=30) :: scr2 = "X123.XXX"
  kerror=0
  k1 = 16
     open(94,file=scr2(1:len_trim(scr2)),access='direct', &
     &  recl=k1,iostat=kerror)
     if(kerror /= 0) then
        print *, "File not opened", kerror
        stop
     endif
  write(94,rec=100) scr2(1:k1)
close (94,status='DELETE')
print *,'pass'
end program x
