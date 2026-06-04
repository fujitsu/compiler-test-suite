#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed char, signed char);
extern unsigned short (*v2) (unsigned int, signed char, signed char);
signed short v3 (unsigned short, signed int);
signed short (*v4) (unsigned short, signed int) = v3;
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern void v9 (unsigned int, unsigned char, signed char);
extern void (*v10) (unsigned int, unsigned char, signed char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed short v13 (unsigned char, signed int, unsigned short, unsigned int);
extern signed short (*v14) (unsigned char, signed int, unsigned short, unsigned int);
extern signed char v15 (unsigned short);
extern signed char (*v16) (unsigned short);
signed short v17 (void);
signed short (*v18) (void) = v17;
signed char v19 (signed int, unsigned char, unsigned short, signed short);
signed char (*v20) (signed int, unsigned char, unsigned short, signed short) = v19;
extern void v21 (signed char, unsigned int, unsigned short);
extern void (*v22) (signed char, unsigned int, unsigned short);
void v23 (unsigned short, signed short, signed char);
void (*v24) (unsigned short, signed short, signed char) = v23;
extern unsigned char v25 (signed char, signed int);
extern unsigned char (*v26) (signed char, signed int);
extern void v27 (signed short, unsigned int);
extern void (*v28) (signed short, unsigned int);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v66 = 1;
unsigned char v65 = 5;
unsigned int v64 = 3U;

void v23 (unsigned short v67, signed short v68, signed char v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed char v72 = -2;
signed short v71 = -2;
signed short v70 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed int v73, unsigned char v74, unsigned short v75, signed short v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 4U;
unsigned char v78 = 6;
signed short v77 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
signed short v82 = 0;
unsigned short v81 = 5;
unsigned int v80 = 0U;
trace++;
switch (trace)
{
case 7: 
return 1;
case 9: 
return 1;
case 11: 
return v82;
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
unsigned char v85 = 7;
signed int v84 = -3;
signed int v83 = 0;
trace++;
switch (trace)
{
case 2: 
return 2U;
case 4: 
{
signed char v86;
signed int v87;
unsigned char v88;
v86 = -4 - -2;
v87 = -3 + v84;
v88 = v25 (v86, v87);
history[history_index++] = (int)v88;
}
break;
case 14: 
return 2U;
default: abort ();
}
}
}
}

signed short v3 (unsigned short v89, signed int v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned char v93 = 1;
unsigned char v92 = 6;
signed short v91 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
