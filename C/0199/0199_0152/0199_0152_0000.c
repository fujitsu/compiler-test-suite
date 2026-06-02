#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern void v3 (signed short);
extern void (*v4) (signed short);
unsigned int v5 (signed char, unsigned int);
unsigned int (*v6) (signed char, unsigned int) = v5;
extern unsigned short v7 (signed int, unsigned int, signed int, unsigned short);
extern unsigned short (*v8) (signed int, unsigned int, signed int, unsigned short);
signed int v9 (unsigned short);
signed int (*v10) (unsigned short) = v9;
signed char v11 (signed int, unsigned short, signed char);
signed char (*v12) (signed int, unsigned short, signed char) = v11;
extern signed short v13 (unsigned short, unsigned int, signed short);
extern signed short (*v14) (unsigned short, unsigned int, signed short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern void v17 (signed short, signed short);
extern void (*v18) (signed short, signed short);
extern unsigned int v19 (unsigned short);
extern unsigned int (*v20) (unsigned short);
static signed char v21 (signed short, signed char, unsigned char);
static signed char (*v22) (signed short, signed char, unsigned char) = v21;
unsigned char v23 (signed char, unsigned int, signed int);
unsigned char (*v24) (signed char, unsigned int, signed int) = v23;
extern unsigned short v25 (unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned short, unsigned int);
unsigned int v27 (unsigned int, unsigned short, unsigned char, unsigned int);
unsigned int (*v28) (unsigned int, unsigned short, unsigned char, unsigned int) = v27;
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
signed char v32 = 2;
unsigned int v31 = 3U;

unsigned int v27 (unsigned int v34, unsigned short v35, unsigned char v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -4;
unsigned char v39 = 1;
unsigned int v38 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed char v41, unsigned int v42, signed int v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed int v46 = 3;
unsigned short v45 = 6;
signed short v44 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v21 (signed short v47, signed char v48, unsigned char v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned int v52 = 1U;
signed int v51 = -4;
unsigned int v50 = 6U;
trace++;
switch (trace)
{
case 2: 
return -4;
default: abort ();
}
}
}
}

signed char v11 (signed int v53, unsigned short v54, signed char v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed short v58 = 2;
unsigned int v57 = 1U;
signed int v56 = -2;
trace++;
switch (trace)
{
case 7: 
return v55;
default: abort ();
}
}
}
}

signed int v9 (unsigned short v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
signed short v62 = -2;
signed int v61 = -1;
unsigned int v60 = 3U;
trace++;
switch (trace)
{
case 1: 
{
signed short v63;
signed char v64;
unsigned char v65;
signed char v66;
v63 = 0 - 0;
v64 = -4 + -2;
v65 = 4 + 6;
v66 = v21 (v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 3: 
return v61;
default: abort ();
}
}
}
}

unsigned int v5 (signed char v67, unsigned int v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned char v71 = 6;
unsigned char v70 = 3;
unsigned short v69 = 1;
trace++;
switch (trace)
{
case 5: 
{
signed int v72;
unsigned int v73;
signed int v74;
unsigned short v75;
unsigned short v76;
v72 = -2 + -4;
v73 = 1U + 1U;
v74 = 0 - -1;
v75 = 0 + v69;
v76 = v7 (v72, v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 9: 
{
unsigned short v77;
v77 = v15 ();
history[history_index++] = (int)v77;
}
break;
case 13: 
return v68;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed short v80;
v80 = v1 ();
history[history_index++] = (int)v80;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
