#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int);
extern unsigned char (*v2) (unsigned char, signed int);
signed int v3 (unsigned char, unsigned int);
signed int (*v4) (unsigned char, unsigned int) = v3;
signed int v5 (signed int, unsigned short, unsigned char);
signed int (*v6) (signed int, unsigned short, unsigned char) = v5;
extern signed int v7 (signed char, signed char, unsigned short, unsigned short);
extern signed int (*v8) (signed char, signed char, unsigned short, unsigned short);
extern void v9 (unsigned int);
extern void (*v10) (unsigned int);
extern void v11 (unsigned short);
extern void (*v12) (unsigned short);
static void v13 (void);
static void (*v14) (void) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
unsigned int v17 (unsigned short, signed int);
unsigned int (*v18) (unsigned short, signed int) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed char v21 (void);
signed char (*v22) (void) = v21;
extern unsigned int v23 (signed int, unsigned char, unsigned char);
extern unsigned int (*v24) (signed int, unsigned char, unsigned char);
signed int v25 (signed short, signed short);
signed int (*v26) (signed short, signed short) = v25;
extern unsigned char v27 (signed short, unsigned char);
extern unsigned char (*v28) (signed short, unsigned char);
signed short v29 (signed short, signed char, signed int);
signed short (*v30) (signed short, signed char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v41 = 3U;
unsigned int v40 = 6U;
unsigned int v39 = 2U;

signed short v29 (signed short v42, signed char v43, signed int v44)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 4;
signed int v46 = 3;
signed char v45 = -1;
trace++;
switch (trace)
{
case 6: 
return -4;
default: abort ();
}
}
}
}

signed int v25 (signed short v48, signed short v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed char v52 = -1;
unsigned int v51 = 7U;
signed char v50 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (void)
{
{
for (;;) {
unsigned short v55 = 6;
unsigned char v54 = 4;
unsigned int v53 = 6U;
trace++;
switch (trace)
{
case 3: 
{
v13 ();
}
break;
case 13: 
return -4;
default: abort ();
}
}
}
}

unsigned int v17 (unsigned short v56, signed int v57)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed short v60 = -3;
unsigned int v59 = 7U;
signed char v58 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v13 (void)
{
{
for (;;) {
unsigned short v63 = 0;
signed char v62 = 3;
unsigned char v61 = 5;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v64;
v64 = v19 ();
history[history_index++] = (int)v64;
}
break;
case 8: 
{
unsigned char v65;
v65 = v19 ();
history[history_index++] = (int)v65;
}
break;
case 10: 
{
signed short v66;
unsigned char v67;
unsigned char v68;
v66 = -1 - -2;
v67 = 0 - 7;
v68 = v27 (v66, v67);
history[history_index++] = (int)v68;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed int v5 (signed int v69, unsigned short v70, unsigned char v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = 1;
unsigned int v73 = 7U;
signed short v72 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned char v75, unsigned int v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 6;
unsigned int v78 = 2U;
signed short v77 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
