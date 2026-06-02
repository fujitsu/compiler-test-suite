#include <stdlib.h>
signed int v1 (unsigned short);
signed int (*v2) (unsigned short) = v1;
signed char v3 (unsigned char);
signed char (*v4) (unsigned char) = v3;
extern unsigned char v5 (unsigned int, unsigned char);
extern unsigned char (*v6) (unsigned int, unsigned char);
extern unsigned int v7 (unsigned int, unsigned char);
extern unsigned int (*v8) (unsigned int, unsigned char);
signed short v9 (unsigned short, unsigned int);
signed short (*v10) (unsigned short, unsigned int) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed char v13 (unsigned char, signed char, unsigned int);
extern signed char (*v14) (unsigned char, signed char, unsigned int);
extern signed char v15 (unsigned short, unsigned int, unsigned int, signed short);
extern signed char (*v16) (unsigned short, unsigned int, unsigned int, signed short);
void v17 (signed int);
void (*v18) (signed int) = v17;
extern unsigned int v19 (signed char);
extern unsigned int (*v20) (signed char);
extern unsigned char v21 (unsigned int, unsigned int, signed char, unsigned int);
extern unsigned char (*v22) (unsigned int, unsigned int, signed char, unsigned int);
static unsigned char v23 (unsigned char);
static unsigned char (*v24) (unsigned char) = v23;
extern unsigned short v25 (signed int, unsigned int);
extern unsigned short (*v26) (signed int, unsigned int);
signed int v27 (unsigned short, signed char, unsigned int, unsigned char);
signed int (*v28) (unsigned short, signed char, unsigned int, unsigned char) = v27;
unsigned char v29 (void);
unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v45 = 7;
unsigned short v44 = 7;
signed int v43 = 2;

unsigned char v29 (void)
{
{
for (;;) {
signed char v48 = 1;
unsigned int v47 = 4U;
unsigned int v46 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v27 (unsigned short v49, signed char v50, unsigned int v51, unsigned char v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned char v55 = 0;
signed char v54 = 3;
unsigned char v53 = 7;
trace++;
switch (trace)
{
case 2: 
return -2;
default: abort ();
}
}
}
}

static unsigned char v23 (unsigned char v56)
{
history[history_index++] = (int)v56;
{
for (;;) {
unsigned int v59 = 0U;
signed short v58 = -2;
signed short v57 = 0;
trace++;
switch (trace)
{
case 11: 
return 7;
default: abort ();
}
}
}
}

void v17 (signed int v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
signed char v63 = 1;
unsigned short v62 = 2;
signed int v61 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned short v64, unsigned int v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = 0;
signed int v67 = -2;
signed int v66 = -3;
trace++;
switch (trace)
{
case 8: 
return 3;
default: abort ();
}
}
}
}

signed char v3 (unsigned char v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = -1;
unsigned short v71 = 4;
unsigned short v70 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned short v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 4U;
unsigned short v75 = 1;
unsigned char v74 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v77;
unsigned int v78;
signed char v79;
unsigned int v80;
unsigned char v81;
v77 = v76 + v76;
v78 = v76 + 4U;
v79 = 1 - 2;
v80 = 3U + 5U;
v81 = v21 (v77, v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 4: 
{
unsigned int v82;
v82 = v11 ();
history[history_index++] = (int)v82;
}
break;
case 6: 
{
unsigned int v83;
unsigned char v84;
unsigned char v85;
v83 = 3U - 0U;
v84 = 0 - 2;
v85 = v5 (v83, v84);
history[history_index++] = (int)v85;
}
break;
case 10: 
{
unsigned char v86;
unsigned char v87;
v86 = v74 + 4;
v87 = v23 (v86);
history[history_index++] = (int)v87;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
