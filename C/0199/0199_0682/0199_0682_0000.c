#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed short, unsigned short, signed char);
extern signed short (*v2) (signed short, unsigned short, signed char);
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
extern unsigned int v5 (unsigned char, unsigned char, unsigned int);
extern unsigned int (*v6) (unsigned char, unsigned char, unsigned int);
signed short v7 (signed int, unsigned short);
signed short (*v8) (signed int, unsigned short) = v7;
unsigned char v11 (signed int, signed char, signed int, unsigned char);
unsigned char (*v12) (signed int, signed char, signed int, unsigned char) = v11;
extern unsigned int v13 (unsigned short, signed short, signed int, unsigned short);
extern unsigned int (*v14) (unsigned short, signed short, signed int, unsigned short);
signed char v15 (void);
signed char (*v16) (void) = v15;
extern signed int v17 (signed short, signed short);
extern signed int (*v18) (signed short, signed short);
extern unsigned short v19 (unsigned char, signed int, signed int, signed char);
extern unsigned short (*v20) (unsigned char, signed int, signed int, signed char);
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
signed char v23 (signed int);
signed char (*v24) (signed int) = v23;
unsigned char v25 (signed short);
unsigned char (*v26) (signed short) = v25;
extern void v27 (unsigned short);
extern void (*v28) (unsigned short);
static unsigned char v29 (unsigned short, unsigned short, signed short, unsigned short);
static unsigned char (*v30) (unsigned short, unsigned short, signed short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
unsigned int v32 = 5U;
signed int v31 = 3;

static unsigned char v29 (unsigned short v34, unsigned short v35, signed short v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 5;
unsigned int v39 = 5U;
unsigned short v38 = 0;
trace++;
switch (trace)
{
case 9: 
return v40;
case 11: 
return v40;
default: abort ();
}
}
}
}

unsigned char v25 (signed short v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = 1;
signed short v43 = -1;
signed short v42 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed int v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
unsigned short v48 = 3;
unsigned int v47 = 7U;
signed short v46 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (void)
{
{
for (;;) {
unsigned char v51 = 0;
signed char v50 = 2;
signed char v49 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed int v52, signed char v53, signed int v54, unsigned char v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed short v58 = -1;
signed short v57 = -4;
signed char v56 = -4;
trace++;
switch (trace)
{
case 5: 
return v55;
case 8: 
{
unsigned short v59;
unsigned short v60;
signed short v61;
unsigned short v62;
unsigned char v63;
v59 = 7 - 5;
v60 = 1 - 7;
v61 = 2 - v57;
v62 = 4 + 5;
v63 = v29 (v59, v60, v61, v62);
history[history_index++] = (int)v63;
}
break;
case 10: 
{
unsigned short v64;
unsigned short v65;
signed short v66;
unsigned short v67;
unsigned char v68;
v64 = 3 - 1;
v65 = 3 + 4;
v66 = v57 + v57;
v67 = 7 + 0;
v68 = v29 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}

signed short v7 (signed int v69, unsigned short v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned short v73 = 3;
unsigned char v72 = 6;
signed short v71 = 1;
trace++;
switch (trace)
{
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
signed short v76;
unsigned short v77;
signed char v78;
signed short v79;
v76 = 1 - -1;
v77 = 6 + 2;
v78 = -2 + 0;
v79 = v1 (v76, v77, v78);
history[history_index++] = (int)v79;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
