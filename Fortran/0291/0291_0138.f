	program main
        integer nd
        nd = 5;
        call move(nd, 1, 3)
	contains
	recursive subroutine move(n, ss, dd)
	integer n, ss, dd
        if( n > 1 ) call move(n - 1, ss, 6 - (ss + dd));
        print *, n, ' to ', ss, ' from ', dd
        if( n > 1 ) call move(n - 1, 6 - (ss + dd), dd);
        end subroutine
        end

