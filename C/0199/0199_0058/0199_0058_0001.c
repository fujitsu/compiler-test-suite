#include <stdlib.h>
unsigned char v1 (unsigned int, signed short, unsigned short);
unsigned char (*v2) (unsigned int, signed short, unsigned short) = v1;
extern signed char v3 (signed int, signed char);
extern signed char (*v4) (signed int, signed char);
extern unsigned int v5 (unsigned short, signed short, unsigned char);
extern unsigned int (*v6) (unsigned short, signed short, unsigned char);
extern void v7 (void);
extern void (*v8) (void);
extern signed char v9 (signed short, unsigned short, signed int, unsigned char);
extern signed char (*v10) (signed short, unsigned short, signed int, unsigned char);
void v11 (unsigned char, signed int, unsigned int, signed int);
void (*v12) (unsigned char, signed int, unsigned int, signed int) = v11;
extern void v13 (signed short, unsigned char);
extern void (*v14) (signed short, unsigned char);
extern unsigned short v17 (unsigned int, unsigned char, signed int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned char, signed int, unsigned short);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
static void v23 (unsigned short);
static void (*v24) (unsigned short) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
unsigned char v27 (unsigned short, unsigned char, unsigned char, unsigned int);
unsigned char (*v28) (unsigned short, unsigned char, unsigned char, unsigned int) = v27;
extern signed char v29 (unsigned short, signed int);
extern signed char (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v52 = 1;
unsigned short v51 = 0;
unsigned short v50 = 1;

unsigned char v27 (unsigned short v53, unsigned char v54, unsigned char v55, unsigned int v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned short v59 = 4;
signed char v58 = -2;
unsigned char v57 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v23 (unsigned short v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 2;
unsigned char v62 = 2;
unsigned short v61 = 3;
trace++;
switch (trace)
{
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
unsigned short v66 = 5;
signed char v65 = -2;
signed short v64 = -2;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v67;
v67 = v66 + 5;
v23 (v67);
}
break;
case 9: 
{
unsigned short v68;
v68 = v66 + 0;
v23 (v68);
}
break;
case 11: 
return 7U;
default: abort ();
}
}
}
}

void v11 (unsigned char v69, signed int v70, unsigned int v71, signed int v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed short v75 = -1;
unsigned short v74 = 2;
unsigned char v73 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v76, signed short v77, unsigned short v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed char v81 = -4;
unsigned char v80 = 2;
unsigned char v79 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed short v82;
unsigned short v83;
signed int v84;
unsigned char v85;
signed char v86;
v82 = -4 - v77;
v83 = v78 + 6;
v84 = -3 + 2;
v85 = v80 - v80;
v86 = v9 (v82, v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 14: 
return v80;
default: abort ();
}
}
}
}
