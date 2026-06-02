#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern signed short v3 (unsigned char, unsigned char, unsigned char);
extern signed short (*v4) (unsigned char, unsigned char, unsigned char);
extern signed char v5 (unsigned int, signed char, unsigned char);
extern signed char (*v6) (unsigned int, signed char, unsigned char);
extern unsigned int v7 (signed int);
extern unsigned int (*v8) (signed int);
signed char v9 (void);
signed char (*v10) (void) = v9;
signed int v11 (signed short, unsigned short);
signed int (*v12) (signed short, unsigned short) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
extern unsigned int v17 (signed int, unsigned short, unsigned char);
extern unsigned int (*v18) (signed int, unsigned short, unsigned char);
signed char v19 (signed char, unsigned char);
signed char (*v20) (signed char, unsigned char) = v19;
extern void v23 (unsigned int);
extern void (*v24) (unsigned int);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed char v29 (unsigned short, signed short, signed int);
extern signed char (*v30) (unsigned short, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v76 = 6;
signed char v75 = 0;
unsigned char v74 = 0;

signed char v19 (signed char v77, unsigned char v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = -1;
unsigned short v80 = 1;
signed char v79 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed short v82, unsigned short v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = 0;
unsigned int v85 = 3U;
signed int v84 = -3;
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
signed char v89 = 1;
signed int v88 = -1;
signed short v87 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
unsigned char v92 = 5;
unsigned short v91 = 1;
signed char v90 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed int v93;
unsigned int v94;
v93 = 0 + 1;
v94 = v7 (v93);
history[history_index++] = (int)v94;
}
break;
case 8: 
{
signed int v95;
unsigned int v96;
v95 = -2 - -2;
v96 = v7 (v95);
history[history_index++] = (int)v96;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}
