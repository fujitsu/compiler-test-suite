print *,'pass'
end

subroutine test01()
	call ftable(sub1)
	call ftable(sub2)
	call ftable(sub3)
	call ftable(sub4)
	call ftable(sub5)
	call c()
	end
	subroutine sub1
        common /com/ iii
        iii=iii+1
	end
	subroutine sub2
        common /com/ iii
        iii=iii+10
	end
	subroutine sub3
        common /com/ iii
        iii=iii+100
	end
	subroutine sub4
        common /com/ iii
        iii=iii+1000
	end
	subroutine sub5
        common /com/ iii
        iii=iii+10000
	end
	subroutine ftable(x)
        common /com/ iii
	pointer(base,ss)
	external x
	integer,save:: i/1/
	integer*8,save:: tbl(5)
	integer :: ss
	tbl(i) =loc( x )
	i=i+1
	return
	entry c
	do j=1,i-1
	  base = tbl(j)
          iss=ss
	  call dsub(ss)
        enddo
        if (iii.ne.11111) print *,'err'
	end
	subroutine dsub(ix)
	external ix
	call ix
	end


        subroutine ftableaaa(x)
        common /com/ iii
        pointer(base,ss)
        external x
        integer,save:: i/1/
        integer ii(10)
        ifun()=1 
        integer*8,save:: tbl(5)
        integer :: ss
        tbl(i) =loc( x )
        i=i+1
        return
        entry caaa
        do j=1,i-1
          base = tbl(j)
          iss=ss
          call dsub(ss)
          call dsub(iss)
          call dsub(ii(1))
          call dsub(i+1)
          call dsub(1_4)
          call dsub(int(1))
          call dsub(ifun())
          call dsub(ifunc())
        enddo
        if (iii.ne.11111) print *,'err'
        contains
         function ifunc()
          ifunc=1
         end function
        end
