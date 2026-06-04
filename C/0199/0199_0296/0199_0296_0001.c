#include <stdlib.h>
void v1 (signed int, signed char, unsigned short, signed int);
void (*v2) (signed int, signed char, unsigned short, signed int) = v1;
extern unsigned short v3 (unsigned char, unsigned char, unsigned int);
extern unsigned short (*v4) (unsigned char, unsigned char, unsigned int);
extern void v5 (unsigned char);
extern void (*v6) (unsigned char);
extern signed char v7 (signed char, unsigned char, signed short, signed int);
extern signed char (*v8) (signed char, unsigned char, signed short, signed int);
signed short v9 (void);
signed short (*v10) (void) = v9;
signed char v11 (unsigned short, signed char);
signed char (*v12) (unsigned short, signed char) = v11;
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
extern signed int v15 (signed int, signed short, signed char);
extern signed int (*v16) (signed int, signed short, signed char);
extern signed short v17 (unsigned char, signed short, signed int);
extern signed short (*v18) (unsigned char, signed short, signed int);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern signed char v23 (unsigned char, signed short);
extern signed char (*v24) (unsigned char, signed short);
extern unsigned short v25 (signed char, unsigned char, signed int, unsigned short);
extern unsigned short (*v26) (signed char, unsigned char, signed int, unsigned short);
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
unsigned char v29 (void);
unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v74 = 1U;
signed char v73 = 2;
unsigned char v72 = 6;

unsigned char v29 (void)
{
{
for (;;) {
unsigned char v77 = 4;
unsigned char v76 = 4;
unsigned int v75 = 3U;
trace++;
switch (trace)
{
case 9: 
return v76;
default: abort ();
}
}
}
}

signed char v11 (unsigned short v78, signed char v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 4U;
unsigned short v81 = 4;
unsigned int v80 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (void)
{
{
for (;;) {
unsigned int v85 = 6U;
unsigned char v84 = 6;
unsigned char v83 = 0;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v86;
signed short v87;
signed int v88;
signed short v89;
v86 = 5 + v83;
v87 = 1 - -2;
v88 = -1 + -2;
v89 = v17 (v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 13: 
return -1;
default: abort ();
}
}
}
}

void v1 (signed int v90, signed char v91, unsigned short v92, signed int v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed short v96 = -1;
signed int v95 = -1;
signed char v94 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed int v97;
signed char v98;
v97 = v95 + v93;
v98 = v13 (v97);
history[history_index++] = (int)v98;
}
break;
case 2: 
return;
case 3: 
{
unsigned short v99;
unsigned short v100;
v99 = v92 - v92;
v100 = v21 (v99);
history[history_index++] = (int)v100;
}
break;
case 15: 
return;
default: abort ();
}
}
}
}
