#include <stdlib.h>
extern signed char v3 (signed int, unsigned short);
extern signed char (*v4) (signed int, unsigned short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned char v7 (signed int);
extern unsigned char (*v8) (signed int);
extern signed int v9 (signed char, signed short, unsigned int, unsigned int);
extern signed int (*v10) (signed char, signed short, unsigned int, unsigned int);
extern unsigned int v11 (signed int, unsigned int, signed int);
extern unsigned int (*v12) (signed int, unsigned int, signed int);
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
extern unsigned int v15 (signed char, signed short, signed int, unsigned char);
extern unsigned int (*v16) (signed char, signed short, signed int, unsigned char);
signed short v17 (unsigned short, signed short, unsigned int);
signed short (*v18) (unsigned short, signed short, unsigned int) = v17;
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
extern unsigned short v21 (signed char, signed short, unsigned char, signed char);
extern unsigned short (*v22) (signed char, signed short, unsigned char, signed char);
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
signed char v27 (void);
signed char (*v28) (void) = v27;
extern unsigned char v29 (unsigned int, unsigned int, unsigned short, signed int);
extern unsigned char (*v30) (unsigned int, unsigned int, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v73 = 1;
unsigned int v72 = 2U;
unsigned int v71 = 4U;

signed char v27 (void)
{
{
for (;;) {
unsigned short v76 = 5;
signed char v75 = 2;
signed int v74 = 1;
trace++;
switch (trace)
{
case 1: 
return 1;
case 4: 
return -1;
case 6: 
return v75;
case 8: 
return -2;
default: abort ();
}
}
}
}

signed short v17 (unsigned short v77, signed short v78, unsigned int v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned char v82 = 7;
unsigned int v81 = 1U;
unsigned int v80 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
