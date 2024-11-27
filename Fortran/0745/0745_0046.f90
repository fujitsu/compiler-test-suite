  subroutine m4
    EXTERNAL j
      write(1,*)j(1)   
      call s
  CONTAINS
    SUBROUTINE s
      write(1,*)j(2)  
    END SUBROUTINE
  END
call m4
rewind 1
read (1,*) i;if (i/=1)print *,'error-1'
read (1,*) i;if (i/=2)print *,'error-2'
print *,'pass'
end
function j(jj)
j=jj
end
