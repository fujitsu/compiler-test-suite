#include <stdlib.h>
extern void v1 (signed int, signed char, signed int, signed short);
extern void (*v2) (signed int, signed char, signed int, signed short);
extern void v3 (unsigned char, signed char, unsigned short);
extern void (*v4) (unsigned char, signed char, unsigned short);
unsigned char v5 (unsigned int, unsigned int, unsigned int, unsigned int);
unsigned char (*v6) (unsigned int, unsigned int, unsigned int, unsigned int) = v5;
signed char v7 (signed int, unsigned char);
signed char (*v8) (signed int, unsigned char) = v7;
extern unsigned char v11 (unsigned int, signed char, signed int);
extern unsigned char (*v12) (unsigned int, signed char, signed int);
extern unsigned int v13 (unsigned char, signed short, signed char);
extern unsigned int (*v14) (unsigned char, signed short, signed char);
static signed short v15 (void);
static signed short (*v16) (void) = v15;
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
static signed int v23 (unsigned char, signed char, signed short, unsigned char);
static signed int (*v24) (unsigned char, signed char, signed short, unsigned char) = v23;
extern void v25 (void);
extern void (*v26) (void);
extern signed char v27 (signed int, unsigned int);
extern signed char (*v28) (signed int, unsigned int);
extern signed char v29 (unsigned int, unsigned short);
extern signed char (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v48 = 2;
signed int v47 = 0;
signed short v46 = 3;

static signed int v23 (unsigned char v49, signed char v50, signed short v51, unsigned char v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed char v55 = -2;
unsigned short v54 = 3;
signed char v53 = -2;
trace++;
switch (trace)
{
case 6: 
{
signed int v56;
unsigned int v57;
signed char v58;
v56 = 1 + -4;
v57 = 6U + 6U;
v58 = v27 (v56, v57);
history[history_index++] = (int)v58;
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}

unsigned char v21 (void)
{
{
for (;;) {
signed short v61 = -2;
signed char v60 = 3;
signed short v59 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v15 (void)
{
{
for (;;) {
unsigned short v64 = 5;
signed int v63 = -1;
unsigned short v62 = 5;
trace++;
switch (trace)
{
case 3: 
{
signed short v65;
unsigned int v66;
v65 = 0 - 3;
v66 = v19 (v65);
history[history_index++] = (int)v66;
}
break;
case 5: 
{
unsigned char v67;
signed char v68;
signed short v69;
unsigned char v70;
signed int v71;
v67 = 2 + 0;
v68 = -1 + 0;
v69 = 2 + 3;
v70 = 2 - 5;
v71 = v23 (v67, v68, v69, v70);
history[history_index++] = (int)v71;
}
break;
case 15: 
return -2;
default: abort ();
}
}
}
}

signed char v7 (signed int v72, unsigned char v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed char v76 = 0;
signed char v75 = 1;
signed int v74 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned int v77, unsigned int v78, unsigned int v79, unsigned int v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 7;
signed int v82 = -4;
unsigned int v81 = 1U;
trace++;
switch (trace)
{
case 2: 
{
signed short v84;
v84 = v15 ();
history[history_index++] = (int)v84;
}
break;
case 16: 
return 6;
default: abort ();
}
}
}
}
