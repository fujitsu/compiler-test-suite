      PROGRAM MAIN
      character(len=200) :: line
      character(len=5) :: old = 'Name1'
      character(len=5) :: del = 'Name3'
    write(13,'(a)' )"Data  & Name1 & 1.23 & 2.34 & 3.45 & 4.56 & 5.67 & Trailers"
    rewind 13
      do
        read (13,110,end=900) line
  110   format (A)
        if (index(line,del).gt.0) then
            iy = index(line,'\hline')
            print *, line(:iy)
          cycle
        endif
        ix = index(line,old)
        if (ix.eq.0) cycle
        line(ix:ix+4) = old
        nlast = index(line,'&',.TRUE.)
        do i=ix+5,nlast
          if (line(i:i).ge.'0' .and. line(i:i).le.'9') line(i:i)=' '
        enddo
        write(14,*) i
      enddo
900   close(1)
rewind 14
read(14,*)jj
if (jj/=51)print *,'error'
print *,'pass'
end
