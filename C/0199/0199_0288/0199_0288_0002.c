#include <stdlib.h>
extern signed short v1 (signed int, signed short, signed char);
extern signed short (*v2) (signed int, signed short, signed char);
unsigned char v3 (signed short, signed int);
unsigned char (*v4) (signed short, signed int) = v3;
signed char v5 (unsigned char, signed short);
signed char (*v6) (unsigned char, signed short) = v5;
signed int v7 (signed char, unsigned short, signed int);
signed int (*v8) (signed char, unsigned short, signed int) = v7;
extern unsigned short v9 (signed char, signed int, signed int);
extern unsigned short (*v10) (signed char, signed int, signed int);
extern signed short v11 (signed int, unsigned char, unsigned char);
extern signed short (*v12) (signed int, unsigned char, unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern void v19 (signed short, signed short, signed short);
extern void (*v20) (signed short, signed short, signed short);
extern void v21 (signed char, unsigned int);
extern void (*v22) (signed char, unsigned int);
static unsigned int v23 (void);
static unsigned int (*v24) (void) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (signed char, signed char, unsigned char, unsigned short);
extern signed int (*v28) (signed char, signed char, unsigned char, unsigned short);
extern unsigned short v29 (unsigned int);
extern unsigned short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v75 = -2;
unsigned int v74 = 3U;
unsigned char v73 = 4;

static unsigned int v23 (void)
{
{
for (;;) {
signed char v78 = -1;
signed int v77 = -1;
unsigned int v76 = 2U;
trace++;
switch (trace)
{
case 6: 
{
signed char v79;
signed char v80;
unsigned char v81;
unsigned short v82;
signed int v83;
v79 = -3 + -3;
v80 = 1 + v78;
v81 = 3 - 2;
v82 = 5 - 6;
v83 = v27 (v79, v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 8: 
{
signed char v84;
signed char v85;
unsigned char v86;
unsigned short v87;
signed int v88;
v84 = v78 + -2;
v85 = -1 + 2;
v86 = 2 - 1;
v87 = 6 - 1;
v88 = v27 (v84, v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 10: 
return 7U;
default: abort ();
}
}
}
}

signed int v7 (signed char v89, unsigned short v90, signed int v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned char v94 = 3;
signed char v93 = -1;
unsigned int v92 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned char v95, signed short v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = -4;
signed char v98 = -4;
unsigned int v97 = 5U;
trace++;
switch (trace)
{
case 3: 
return v98;
case 5: 
{
unsigned int v100;
v100 = v23 ();
history[history_index++] = (int)v100;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned char v3 (signed short v101, signed int v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned short v105 = 4;
signed short v104 = 0;
unsigned int v103 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
