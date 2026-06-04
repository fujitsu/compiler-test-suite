#include <stdlib.h>
signed int v1 (signed short);
signed int (*v2) (signed short) = v1;
signed char v3 (signed char, signed short, signed char, unsigned short);
signed char (*v4) (signed char, signed short, signed char, unsigned short) = v3;
extern unsigned int v5 (unsigned short, signed char, unsigned char);
extern unsigned int (*v6) (unsigned short, signed char, unsigned char);
void v7 (unsigned short, signed short, unsigned char);
void (*v8) (unsigned short, signed short, unsigned char) = v7;
extern unsigned char v9 (unsigned int, signed char);
extern unsigned char (*v10) (unsigned int, signed char);
unsigned int v11 (signed int, signed short, signed char, signed short);
unsigned int (*v12) (signed int, signed short, signed char, signed short) = v11;
extern unsigned char v13 (signed int, unsigned char, signed char);
extern unsigned char (*v14) (signed int, unsigned char, signed char);
extern signed int v17 (void);
extern signed int (*v18) (void);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
void v23 (signed short, unsigned int);
void (*v24) (signed short, unsigned int) = v23;
extern void v27 (signed int, signed short);
extern void (*v28) (signed int, signed short);
extern signed char v29 (unsigned char);
extern signed char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v43 = 3U;
signed char v42 = -3;
unsigned char v41 = 5;

void v23 (signed short v44, unsigned int v45)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned int v48 = 0U;
signed int v47 = 0;
unsigned int v46 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
unsigned char v51 = 0;
signed char v50 = 2;
signed short v49 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed int v52, signed short v53, signed char v54, signed short v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = -3;
unsigned int v57 = 0U;
signed short v56 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned short v59, signed short v60, unsigned char v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed char v64 = 1;
signed short v63 = 3;
signed int v62 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed char v65, signed short v66, signed char v67, unsigned short v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed short v71 = 3;
unsigned char v70 = 5;
unsigned char v69 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed short v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
signed int v75 = 0;
unsigned char v74 = 3;
unsigned char v73 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v76;
signed char v77;
unsigned char v78;
unsigned int v79;
v76 = 1 - 6;
v77 = -1 - -4;
v78 = v74 - 6;
v79 = v5 (v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 2: 
{
unsigned int v80;
signed char v81;
unsigned char v82;
v80 = 2U - 7U;
v81 = -1 - -3;
v82 = v9 (v80, v81);
history[history_index++] = (int)v82;
}
break;
case 14: 
return v75;
default: abort ();
}
}
}
}
