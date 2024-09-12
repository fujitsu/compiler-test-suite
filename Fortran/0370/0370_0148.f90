
block data
   common /comx/ tc1,tp1,tp2

   complex(kind=8),target  :: tc1 = (1.0_8, 2.0_8)
   complex(kind=8),pointer :: tp1 => tc1
   complex(kind=8),pointer :: tp2
end block data

program main
   common /comx/ tc1,tp1,tp2
   complex(kind=8),target  :: tc1
   complex(kind=8),pointer :: tp1
   complex(kind=8),pointer :: tp2

   tp2=>tc1

   print *, tc1
   print *, tp1
   print *, tp2

end program main
