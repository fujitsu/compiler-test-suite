 call s1
 print *,'pass'
 end
subroutine s1
TYPE TEMPERATURES
   INTEGER :: HIGH = 300, LOW = -300
END TYPE TEMPERATURES

TYPE WEATHER
   CHARACTER (LEN = 32) CITY
   TYPE (TEMPERATURES) RANGE (1950:2050)
END TYPE WEATHER

TYPE (WEATHER) WORLDWIDE (200)

TYPE (TEMPERATURES) :: WATER = TEMPERATURES(100,0)

i=100
WORLDWIDE (I) % CITY = "Nome"
WORLDWIDE (I) % RANGE (1990) % LOW = -83
if(WORLDWIDE (I) % CITY/='Nome')write(6,*) "NG"
if(WORLDWIDE (I) % RANGE (1990) % LOW/=-83)write(6,*) "NG"
if(WORLDWIDE (I) % RANGE (1999) % LOW/=-300)write(6,*) "NG"
if(water%high/=100)write(6,*) "NG"
end
