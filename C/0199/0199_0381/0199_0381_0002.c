#include <stdlib.h>
signed char v1 (signed short, unsigned short, unsigned int);
signed char (*v2) (signed short, unsigned short, unsigned int) = v1;
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
extern signed int v5 (unsigned int, unsigned int, unsigned int);
extern signed int (*v6) (unsigned int, unsigned int, unsigned int);
unsigned int v7 (unsigned short, signed char);
unsigned int (*v8) (unsigned short, signed char) = v7;
signed char v9 (unsigned char, unsigned int);
signed char (*v10) (unsigned char, unsigned int) = v9;
extern signed int v11 (signed char, unsigned char, signed short);
extern signed int (*v12) (signed char, unsigned char, signed short);
extern signed short v13 (signed short, signed int, unsigned short, unsigned char);
extern signed short (*v14) (signed short, signed int, unsigned short, unsigned char);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern signed short v17 (unsigned char);
extern signed short (*v18) (unsigned char);
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern signed short v21 (signed int, unsigned int, signed short);
extern signed short (*v22) (signed int, unsigned int, signed short);
extern void v23 (signed char, signed short);
extern void (*v24) (signed char, signed short);
extern unsigned int v25 (signed short, unsigned int, signed int, signed short);
extern unsigned int (*v26) (signed short, unsigned int, signed int, signed short);
extern signed short v27 (unsigned int, unsigned int, unsigned short);
extern signed short (*v28) (unsigned int, unsigned int, unsigned short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v73 = 2U;
signed char v72 = -2;
signed char v71 = -1;

unsigned char v15 (void)
{
{
for (;;) {
unsigned char v76 = 7;
signed short v75 = -3;
unsigned short v74 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned char v77, unsigned int v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed int v81 = -1;
unsigned int v80 = 1U;
unsigned char v79 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned short v82, signed char v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = -1;
unsigned short v85 = 0;
unsigned char v84 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed short v87, unsigned short v88, unsigned int v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 1U;
signed int v91 = -1;
signed int v90 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed short v93;
signed int v94;
unsigned short v95;
unsigned char v96;
signed short v97;
v93 = -1 - 2;
v94 = 2 + -3;
v95 = v88 - 4;
v96 = 3 + 5;
v97 = v13 (v93, v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
