#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
unsigned char v7 (signed char);
unsigned char (*v8) (signed char) = v7;
extern unsigned int v9 (signed short, signed int, signed char);
extern unsigned int (*v10) (signed short, signed int, signed char);
extern void v11 (unsigned char, unsigned short, unsigned char, signed int);
extern void (*v12) (unsigned char, unsigned short, unsigned char, signed int);
extern unsigned int v13 (signed int, signed short, unsigned char);
extern unsigned int (*v14) (signed int, signed short, unsigned char);
signed short v15 (unsigned char);
signed short (*v16) (unsigned char) = v15;
void v17 (unsigned char);
void (*v18) (unsigned char) = v17;
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
extern unsigned char v25 (signed char, signed int, signed int, signed int);
extern unsigned char (*v26) (signed char, signed int, signed int, signed int);
extern signed short v27 (unsigned int, signed int, unsigned int);
extern signed short (*v28) (unsigned int, signed int, unsigned int);
extern unsigned short v29 (signed int, signed int);
extern unsigned short (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v69 = 1;
signed char v68 = 2;
unsigned char v67 = 3;

unsigned char v23 (void)
{
{
for (;;) {
signed short v72 = -1;
signed short v71 = -4;
unsigned char v70 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned char v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
signed char v76 = -1;
signed char v75 = -3;
unsigned char v74 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned char v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
unsigned char v80 = 4;
signed short v79 = -4;
signed int v78 = 2;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v81;
signed int v82;
unsigned int v83;
signed short v84;
v81 = 3U + 3U;
v82 = 0 - v78;
v83 = 2U + 2U;
v84 = v27 (v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 6: 
{
unsigned int v85;
signed int v86;
unsigned int v87;
signed short v88;
v85 = 6U + 3U;
v86 = 3 + v78;
v87 = 4U + 6U;
v88 = v27 (v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 8: 
{
unsigned char v89;
unsigned short v90;
unsigned char v91;
signed int v92;
v89 = v80 - 2;
v90 = 6 - 1;
v91 = v77 + 1;
v92 = -1 + v78;
v11 (v89, v90, v91, v92);
}
break;
case 10: 
return -1;
default: abort ();
}
}
}
}

unsigned char v7 (signed char v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
unsigned short v96 = 1;
unsigned short v95 = 5;
unsigned int v94 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
