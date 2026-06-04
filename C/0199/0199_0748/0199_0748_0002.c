#include <stdlib.h>
extern unsigned int v3 (signed char, unsigned char, unsigned short);
extern unsigned int (*v4) (signed char, unsigned char, unsigned short);
extern unsigned short v5 (unsigned char, unsigned short, signed short);
extern unsigned short (*v6) (unsigned char, unsigned short, signed short);
unsigned int v7 (unsigned char, signed char, unsigned int);
unsigned int (*v8) (unsigned char, signed char, unsigned int) = v7;
extern void v9 (unsigned int, unsigned char, signed char, unsigned char);
extern void (*v10) (unsigned int, unsigned char, signed char, unsigned char);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern signed short v13 (void);
extern signed short (*v14) (void);
signed int v15 (unsigned char, unsigned int);
signed int (*v16) (unsigned char, unsigned int) = v15;
signed int v17 (void);
signed int (*v18) (void) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed char v21 (unsigned char);
extern signed char (*v22) (unsigned char);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
static void v25 (signed short, unsigned char, signed char);
static void (*v26) (signed short, unsigned char, signed char) = v25;
extern void v27 (signed int);
extern void (*v28) (signed int);
unsigned int v29 (unsigned char, signed short);
unsigned int (*v30) (unsigned char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v70 = 7U;
signed int v69 = -3;
unsigned int v68 = 5U;

unsigned int v29 (unsigned char v71, signed short v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed short v75 = -2;
unsigned char v74 = 7;
signed int v73 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v25 (signed short v76, unsigned char v77, signed char v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed char v81 = 1;
unsigned int v80 = 1U;
signed int v79 = -2;
trace++;
switch (trace)
{
case 6: 
return;
default: abort ();
}
}
}
}

signed int v17 (void)
{
{
for (;;) {
unsigned char v84 = 5;
unsigned char v83 = 5;
signed short v82 = -3;
trace++;
switch (trace)
{
case 3: 
return 0;
case 5: 
{
signed short v85;
unsigned char v86;
signed char v87;
v85 = v82 + -3;
v86 = v84 + 0;
v87 = -3 - -2;
v25 (v85, v86, v87);
}
break;
case 7: 
return -1;
default: abort ();
}
}
}
}

signed int v15 (unsigned char v88, unsigned int v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed char v92 = -1;
signed char v91 = -3;
unsigned int v90 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v93, signed char v94, unsigned int v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = -1;
unsigned int v97 = 2U;
unsigned short v96 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed short v99;
v99 = v13 ();
history[history_index++] = (int)v99;
}
break;
case 11: 
return v95;
default: abort ();
}
}
}
}
