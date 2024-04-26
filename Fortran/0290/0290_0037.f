	external inc
	call sub(inc)
	print *,' Pass '
	end
        subroutine sub(f)
        common /c/ii
        ii=0
 10        call f(j)
        ii=ii+1
        if (j.ne.10)go to 10
        end
        subroutine inc(j)
        common /c/i
	j=i
	end
