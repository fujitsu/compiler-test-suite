#include <stdlib.h>
extern void v1 (signed char, signed char, unsigned int);
extern void (*v2) (signed char, signed char, unsigned int);
extern signed short v3 (signed int, unsigned char, unsigned short, signed int);
extern signed short (*v4) (signed int, unsigned char, unsigned short, signed int);
extern signed short v5 (void);
extern signed short (*v6) (void);
signed char v9 (void);
signed char (*v10) (void) = v9;
unsigned char v11 (unsigned int, unsigned char, signed int);
unsigned char (*v12) (unsigned int, unsigned char, signed int) = v11;
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
extern signed int v15 (unsigned int, signed int, unsigned char, signed int);
extern signed int (*v16) (unsigned int, signed int, unsigned char, signed int);
extern void v17 (void);
extern void (*v18) (void);
extern signed short v19 (signed short);
extern signed short (*v20) (signed short);
extern unsigned char v21 (signed char, signed int);
extern unsigned char (*v22) (signed char, signed int);
unsigned short v23 (unsigned int, unsigned char, unsigned char);
unsigned short (*v24) (unsigned int, unsigned char, unsigned char) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern unsigned char v29 (unsigned short, signed char, unsigned int, signed char);
extern unsigned char (*v30) (unsigned short, signed char, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v78 = 2;
signed short v77 = 3;
signed short v76 = -2;

unsigned short v23 (unsigned int v79, unsigned char v80, unsigned char v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed int v84 = 0;
signed int v83 = 1;
signed short v82 = 1;
trace++;
switch (trace)
{
case 4: 
return 3;
case 6: 
return 5;
case 8: 
return 1;
case 10: 
return 6;
default: abort ();
}
}
}
}

unsigned char v11 (unsigned int v85, unsigned char v86, signed int v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 6;
unsigned char v89 = 5;
unsigned int v88 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
signed short v93 = -3;
signed char v92 = 1;
signed short v91 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
