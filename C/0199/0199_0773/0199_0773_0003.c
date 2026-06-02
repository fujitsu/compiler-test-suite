#include <stdlib.h>
extern unsigned char v1 (unsigned char);
extern unsigned char (*v2) (unsigned char);
extern void v3 (unsigned int, signed char, signed int, signed short);
extern void (*v4) (unsigned int, signed char, signed int, signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
unsigned char v7 (unsigned char, signed char);
unsigned char (*v8) (unsigned char, signed char) = v7;
extern void v9 (signed char, signed short, signed int);
extern void (*v10) (signed char, signed short, signed int);
extern signed short v11 (signed char, signed int, signed short, unsigned short);
extern signed short (*v12) (signed char, signed int, signed short, unsigned short);
void v13 (unsigned short, unsigned char);
void (*v14) (unsigned short, unsigned char) = v13;
extern unsigned int v15 (unsigned char, unsigned char, unsigned int);
extern unsigned int (*v16) (unsigned char, unsigned char, unsigned int);
signed short v17 (signed char, unsigned short, unsigned short, unsigned short);
signed short (*v18) (signed char, unsigned short, unsigned short, unsigned short) = v17;
unsigned int v19 (unsigned char);
unsigned int (*v20) (unsigned char) = v19;
unsigned int v21 (unsigned char, unsigned short, unsigned char);
unsigned int (*v22) (unsigned char, unsigned short, unsigned char) = v21;
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern signed short v25 (unsigned char);
extern signed short (*v26) (unsigned char);
extern void v27 (signed int, signed short, unsigned short, signed char);
extern void (*v28) (signed int, signed short, unsigned short, signed char);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v72 = 1;
unsigned short v71 = 1;
unsigned int v70 = 2U;

unsigned short v23 (void)
{
{
for (;;) {
unsigned char v75 = 5;
signed int v74 = -1;
unsigned int v73 = 5U;
trace++;
switch (trace)
{
case 3: 
return 7;
case 9: 
return 2;
case 11: 
return 4;
default: abort ();
}
}
}
}

unsigned int v21 (unsigned char v76, unsigned short v77, unsigned char v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned char v81 = 4;
unsigned short v80 = 7;
unsigned int v79 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned char v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
signed int v85 = 1;
unsigned int v84 = 0U;
unsigned int v83 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed char v86, unsigned short v87, unsigned short v88, unsigned short v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed int v92 = 1;
signed int v91 = 0;
unsigned char v90 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned short v93, unsigned char v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed int v97 = 1;
signed int v96 = 3;
unsigned char v95 = 5;
trace++;
switch (trace)
{
case 1: 
{
signed short v98;
v98 = v29 ();
history[history_index++] = (int)v98;
}
break;
case 17: 
return;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v99, signed char v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed short v103 = -1;
signed short v102 = -3;
unsigned short v101 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
