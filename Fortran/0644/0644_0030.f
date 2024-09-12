       common /com1/ a
       equivalence(a,b)
       b = 1
       print *,a,b
       end
       block data
       common /com1/ z
       data z/3/
	end
