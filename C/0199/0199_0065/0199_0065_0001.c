#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed short);
extern unsigned char (*v2) (unsigned int, signed short);
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
signed short v5 (unsigned char, unsigned int, unsigned short);
signed short (*v6) (unsigned char, unsigned int, unsigned short) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (signed int, unsigned short, unsigned char, signed char);
extern void (*v10) (signed int, unsigned short, unsigned char, signed char);
signed char v11 (unsigned short);
signed char (*v12) (unsigned short) = v11;
extern signed int v13 (unsigned char, unsigned int);
extern signed int (*v14) (unsigned char, unsigned int);
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
extern unsigned char v17 (unsigned short, unsigned int);
extern unsigned char (*v18) (unsigned short, unsigned int);
extern signed int v19 (unsigned char, signed int, unsigned short, signed int);
extern signed int (*v20) (unsigned char, signed int, unsigned short, signed int);
extern signed short v23 (signed char, unsigned short);
extern signed short (*v24) (signed char, unsigned short);
extern unsigned int v25 (signed char, signed int, signed char, signed short);
extern unsigned int (*v26) (signed char, signed int, signed char, signed short);
signed char v27 (void);
signed char (*v28) (void) = v27;
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v74 = 5;
unsigned char v73 = 7;
unsigned int v72 = 7U;

signed char v27 (void)
{
{
for (;;) {
unsigned char v77 = 1;
unsigned int v76 = 7U;
signed char v75 = -4;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v78;
signed int v79;
unsigned short v80;
signed int v81;
signed int v82;
v78 = 2 + v77;
v79 = -3 - 0;
v80 = 3 + 4;
v81 = -1 - 1;
v82 = v19 (v78, v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 5: 
return -2;
case 9: 
return 1;
default: abort ();
}
}
}
}

signed char v11 (unsigned short v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 0;
signed short v85 = -4;
signed char v84 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned char v87, unsigned int v88, unsigned short v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 3;
signed int v91 = -1;
unsigned short v90 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (void)
{
{
for (;;) {
signed char v95 = -2;
signed char v94 = -1;
signed char v93 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
