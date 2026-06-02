#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern signed char v3 (signed char, signed char);
extern signed char (*v4) (signed char, signed char);
extern unsigned char v5 (signed short, signed int, unsigned char);
extern unsigned char (*v6) (signed short, signed int, unsigned char);
extern void v7 (signed char);
extern void (*v8) (signed char);
unsigned char v9 (signed char, unsigned int);
unsigned char (*v10) (signed char, unsigned int) = v9;
extern void v13 (unsigned char, unsigned int, signed short, signed short);
extern void (*v14) (unsigned char, unsigned int, signed short, signed short);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned char v19 (signed char, unsigned char, signed int);
extern unsigned char (*v20) (signed char, unsigned char, signed int);
extern unsigned char v21 (signed short, unsigned char, unsigned int);
extern unsigned char (*v22) (signed short, unsigned char, unsigned int);
signed char v23 (void);
signed char (*v24) (void) = v23;
unsigned short v25 (signed char, signed char, unsigned short);
unsigned short (*v26) (signed char, signed char, unsigned short) = v25;
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
signed char v29 (signed int, unsigned char, signed short);
signed char (*v30) (signed int, unsigned char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v65 = 3;
signed short v64 = -3;
signed char v63 = 0;

signed char v29 (signed int v66, unsigned char v67, signed short v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned int v71 = 2U;
unsigned int v70 = 6U;
signed char v69 = -4;
trace++;
switch (trace)
{
case 6: 
return 0;
case 8: 
return v69;
case 10: 
return 0;
default: abort ();
}
}
}
}

unsigned short v25 (signed char v72, signed char v73, unsigned short v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = -1;
unsigned char v76 = 5;
signed int v75 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (void)
{
{
for (;;) {
signed char v80 = 2;
unsigned short v79 = 3;
unsigned short v78 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed char v81, unsigned int v82)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned short v85 = 4;
unsigned short v84 = 2;
signed char v83 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
