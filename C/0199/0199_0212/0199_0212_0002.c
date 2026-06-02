#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned char);
extern unsigned char (*v2) (unsigned char, unsigned char);
unsigned int v3 (signed int);
unsigned int (*v4) (signed int) = v3;
extern unsigned short v5 (signed short, signed int);
extern unsigned short (*v6) (signed short, signed int);
extern void v7 (unsigned char);
extern void (*v8) (unsigned char);
extern signed int v9 (signed short, signed char);
extern signed int (*v10) (signed short, signed char);
extern void v11 (unsigned short, signed char, signed int);
extern void (*v12) (unsigned short, signed char, signed int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (signed int, signed short, signed int);
extern signed short (*v18) (signed int, signed short, signed int);
extern unsigned int v19 (unsigned char, unsigned char, signed int);
extern unsigned int (*v20) (unsigned char, unsigned char, signed int);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern unsigned int v23 (signed int, signed int, unsigned int);
extern unsigned int (*v24) (signed int, signed int, unsigned int);
unsigned short v25 (unsigned short, signed char, unsigned short, unsigned short);
unsigned short (*v26) (unsigned short, signed char, unsigned short, unsigned short) = v25;
extern signed char v27 (unsigned char, unsigned char, unsigned short, unsigned int);
extern signed char (*v28) (unsigned char, unsigned char, unsigned short, unsigned int);
signed int v29 (unsigned char, unsigned int, signed short);
signed int (*v30) (unsigned char, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v73 = -4;
unsigned short v72 = 4;
signed int v71 = -1;

signed int v29 (unsigned char v74, unsigned int v75, signed short v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 7;
unsigned char v78 = 2;
signed short v77 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (unsigned short v80, signed char v81, unsigned short v82, unsigned short v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = 3;
signed char v85 = 3;
unsigned char v84 = 1;
trace++;
switch (trace)
{
case 5: 
return v80;
case 7: 
return v83;
case 11: 
return v82;
default: abort ();
}
}
}
}

unsigned int v3 (signed int v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 0;
unsigned char v89 = 6;
unsigned short v88 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
