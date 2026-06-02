#include <stdlib.h>
void v1 (signed char, signed short);
void (*v2) (signed char, signed short) = v1;
extern unsigned char v3 (unsigned short, signed char);
extern unsigned char (*v4) (unsigned short, signed char);
extern unsigned char v5 (unsigned char, signed short);
extern unsigned char (*v6) (unsigned char, signed short);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern unsigned short v9 (signed int, unsigned short, signed int);
extern unsigned short (*v10) (signed int, unsigned short, signed int);
extern unsigned char v11 (unsigned short, signed char);
extern unsigned char (*v12) (unsigned short, signed char);
extern signed short v13 (unsigned char, signed int, signed int);
extern signed short (*v14) (unsigned char, signed int, signed int);
extern signed char v15 (void);
extern signed char (*v16) (void);
static void v17 (void);
static void (*v18) (void) = v17;
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern void v21 (unsigned short);
extern void (*v22) (unsigned short);
unsigned char v23 (signed int, unsigned char, signed int);
unsigned char (*v24) (signed int, unsigned char, signed int) = v23;
void v25 (void);
void (*v26) (void) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned char v29 (signed char, signed short);
extern unsigned char (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v49 = 0;
signed short v48 = -1;
unsigned char v47 = 3;

void v25 (void)
{
{
for (;;) {
signed int v52 = -2;
signed int v51 = 2;
signed int v50 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed int v53, unsigned char v54, signed int v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned char v58 = 6;
signed short v57 = -3;
unsigned int v56 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (void)
{
{
for (;;) {
unsigned int v61 = 6U;
unsigned int v60 = 3U;
unsigned char v59 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v17 (void)
{
{
for (;;) {
unsigned short v64 = 7;
signed int v63 = -3;
unsigned char v62 = 5;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v65;
v65 = v64 - v64;
v21 (v65);
}
break;
case 5: 
{
unsigned short v66;
v66 = v64 + v64;
v21 (v66);
}
break;
case 7: 
{
unsigned short v67;
v67 = v64 - v64;
v21 (v67);
}
break;
case 9: 
{
unsigned short v68;
v68 = v64 + v64;
v21 (v68);
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
signed char v71 = 3;
signed short v70 = -2;
unsigned char v69 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed char v72, signed short v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = 0;
unsigned int v75 = 5U;
signed char v74 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed char v77;
signed short v78;
unsigned char v79;
v77 = v72 + v72;
v78 = 0 + v73;
v79 = v29 (v77, v78);
history[history_index++] = (int)v79;
}
break;
case 2: 
{
v17 ();
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
