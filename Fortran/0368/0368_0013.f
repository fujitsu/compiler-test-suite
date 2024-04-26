	type ttt
	integer,pointer::a
	end type
	type(ttt)sttt
	integer,pointer::a
	integer,target::b
	sttt%a => b
	a => b
        print *,'ok'
	end
