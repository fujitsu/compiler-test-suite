#include <stdlib.h>
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern signed char v7 (signed int, unsigned short);
extern signed char (*v8) (signed int, unsigned short);
extern signed short v9 (signed int, unsigned char, signed char);
extern signed short (*v10) (signed int, unsigned char, signed char);
extern void v11 (void);
extern void (*v12) (void);
extern signed short v13 (signed short, signed short);
extern signed short (*v14) (signed short, signed short);
extern signed int v15 (signed char, signed int, signed short, signed int);
extern signed int (*v16) (signed char, signed int, signed short, signed int);
extern unsigned int v17 (unsigned char, signed int, signed char, unsigned short);
extern unsigned int (*v18) (unsigned char, signed int, signed char, unsigned short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
signed int v25 (signed char, unsigned char, signed short, signed short);
signed int (*v26) (signed char, unsigned char, signed short, signed short) = v25;
unsigned short v27 (signed short, unsigned short);
unsigned short (*v28) (signed short, unsigned short) = v27;
extern unsigned int v29 (unsigned int, signed int);
extern unsigned int (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v66 = 0;
unsigned short v65 = 5;
signed char v64 = 0;

unsigned short v27 (signed short v67, unsigned short v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned char v71 = 7;
signed short v70 = -3;
signed int v69 = 3;
trace++;
switch (trace)
{
case 5: 
return v68;
default: abort ();
}
}
}
}

signed int v25 (signed char v72, unsigned char v73, signed short v74, signed short v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed int v78 = -2;
unsigned short v77 = 6;
signed char v76 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
unsigned short v81 = 4;
unsigned int v80 = 2U;
unsigned int v79 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
