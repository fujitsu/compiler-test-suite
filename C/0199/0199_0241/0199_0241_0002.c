#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern unsigned int v3 (signed char, unsigned char, signed char, signed char);
extern unsigned int (*v4) (signed char, unsigned char, signed char, signed char);
extern void v5 (unsigned short, unsigned short, signed int);
extern void (*v6) (unsigned short, unsigned short, signed int);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
extern signed char v13 (signed char);
extern signed char (*v14) (signed char);
unsigned short v15 (signed char, signed char, unsigned char);
unsigned short (*v16) (signed char, signed char, unsigned char) = v15;
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern void v19 (signed short, unsigned int);
extern void (*v20) (signed short, unsigned int);
extern void v21 (unsigned short, signed char, signed int, unsigned char);
extern void (*v22) (unsigned short, signed char, signed int, unsigned char);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (signed int, unsigned short, unsigned short);
extern void (*v26) (signed int, unsigned short, unsigned short);
unsigned int v27 (unsigned char, signed short, signed char, unsigned int);
unsigned int (*v28) (unsigned char, signed short, signed char, unsigned int) = v27;
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v70 = 3;
unsigned char v69 = 0;
unsigned int v68 = 6U;

signed int v29 (void)
{
{
for (;;) {
signed short v73 = 3;
unsigned char v72 = 7;
unsigned int v71 = 7U;
trace++;
switch (trace)
{
case 9: 
return 1;
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned int v27 (unsigned char v74, signed short v75, signed char v76, unsigned int v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned char v80 = 3;
unsigned char v79 = 5;
unsigned short v78 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed char v81, signed char v82, unsigned char v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 6;
unsigned short v85 = 3;
signed short v84 = -3;
trace++;
switch (trace)
{
case 6: 
return v85;
default: abort ();
}
}
}
}
