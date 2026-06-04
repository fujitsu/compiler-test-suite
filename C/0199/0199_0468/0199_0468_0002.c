#include <stdlib.h>
void v1 (signed char, unsigned char);
void (*v2) (signed char, unsigned char) = v1;
extern unsigned char v3 (unsigned short);
extern unsigned char (*v4) (unsigned short);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern unsigned short v9 (unsigned char, unsigned int, signed short);
extern unsigned short (*v10) (unsigned char, unsigned int, signed short);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned int v13 (signed char, unsigned short);
extern unsigned int (*v14) (signed char, unsigned short);
signed char v15 (signed char, unsigned short, signed int);
signed char (*v16) (signed char, unsigned short, signed int) = v15;
extern unsigned int v17 (signed char, signed int);
extern unsigned int (*v18) (signed char, signed int);
extern unsigned short v19 (signed char, unsigned int, unsigned short, unsigned short);
extern unsigned short (*v20) (signed char, unsigned int, unsigned short, unsigned short);
extern signed short v21 (signed char, unsigned int, unsigned short);
extern signed short (*v22) (signed char, unsigned int, unsigned short);
extern unsigned char v23 (signed int, unsigned char);
extern unsigned char (*v24) (signed int, unsigned char);
extern void v25 (unsigned short);
extern void (*v26) (unsigned short);
static void v27 (signed int);
static void (*v28) (signed int) = v27;
extern void v29 (signed char, unsigned char);
extern void (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v57 = -4;
signed short v56 = 1;
unsigned char v55 = 4;

static void v27 (signed int v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
signed short v61 = -2;
unsigned int v60 = 3U;
signed int v59 = -1;
trace++;
switch (trace)
{
case 5: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

signed char v15 (signed char v62, unsigned short v63, signed int v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 5U;
unsigned short v66 = 4;
unsigned int v65 = 3U;
trace++;
switch (trace)
{
case 2: 
{
signed char v68;
unsigned char v69;
v68 = v62 - -2;
v69 = 7 - 2;
v29 (v68, v69);
}
break;
case 8: 
{
signed char v70;
unsigned char v71;
v70 = v62 - 2;
v71 = 5 - 7;
v29 (v70, v71);
}
break;
case 14: 
return v62;
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
unsigned char v74 = 5;
signed char v73 = -3;
signed short v72 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
signed char v77 = 0;
unsigned char v76 = 0;
signed short v75 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed int v78;
v78 = 1 - -3;
v27 (v78);
}
break;
case 6: 
return 0U;
case 10: 
{
signed int v79;
v79 = -2 + -4;
v27 (v79);
}
break;
case 12: 
return 2U;
default: abort ();
}
}
}
}

void v1 (signed char v80, unsigned char v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 1;
signed char v83 = -4;
signed int v82 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v85;
unsigned char v86;
v85 = 1 - 0;
v86 = v3 (v85);
history[history_index++] = (int)v86;
}
break;
case 16: 
return;
default: abort ();
}
}
}
}
