        type inte; integer:: a; end type
	type(inte)inte_r
	integer,target:: dummy(1)
	integer       :: dummy2
	inte_r%a=2
 	dummy(1)=0
	dummy2=inte_r%a*3
	print *,dummy2,dummy(1)
	end
